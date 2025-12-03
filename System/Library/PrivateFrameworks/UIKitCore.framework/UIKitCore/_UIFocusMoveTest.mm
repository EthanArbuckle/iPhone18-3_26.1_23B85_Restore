@interface _UIFocusMoveTest
- (BOOL)_dataSourceShouldResetFocusBeforeIteration:(unint64_t)iteration;
- (UIFocusEnvironment)containerFocusEnvironment;
- (_UIFocusMoveTest)initWithIdentifier:(id)identifier;
- (_UIFocusMoveTestDataSource)dataSource;
- (_UIFocusMoveTestDelegate)delegate;
- (double)_dataSourceDelayBeforeMove:(unint64_t)move duringIteration:(unint64_t)iteration;
- (unint64_t)_dataSourceHeadingForMove:(unint64_t)move duringIteration:(unint64_t)iteration;
- (unint64_t)_dataSourceMaximumNumberOfMovesDuringIteration:(unint64_t)iteration;
- (unint64_t)_dataSourceNumberOfIterations;
- (void)_notifyDelegateDidFinishIteration:(unint64_t)iteration;
- (void)_notifyDelegateDidMoveFocusAlongHeading:(unint64_t)heading forMove:(unint64_t)move duringIteration:(unint64_t)iteration;
- (void)_notifyDelegateWillMoveFocusAlongHeading:(unint64_t)heading forMove:(unint64_t)move duringIteration:(unint64_t)iteration;
- (void)_notifyDelegateWillStartIteration:(unint64_t)iteration;
- (void)_performFocusMovement;
- (void)_performFocusMovementAfterDelayForMove:(unint64_t)move iteration:(unint64_t)iteration;
- (void)_resetFocusIfNecessaryBeforeIteration:(unint64_t)iteration;
- (void)main;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)reset;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIFocusMoveTest

- (_UIFocusMoveTest)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = _UIFocusMoveTest;
  result = [(_UIFocusTest *)&v4 initWithIdentifier:identifier];
  if (result)
  {
    result->_numberOfIterations = 1;
    result->_maximumMovesPerIteration = -1;
    result->_movementDelay = 0.0;
    result->_movementHeading = 8;
    result->_resetsFocusBeforeIterations = 1;
  }

  return result;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UIFocusMoveTest;
  [(_UIFocusTest *)&v3 reset];
  self->_activeNumberOfIterations = 0;
  self->_currentMove = 0;
  self->_currentIteration = 0;
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  containerFocusEnvironment = [(_UIFocusMoveTest *)self containerFocusEnvironment];

  if (!containerFocusEnvironment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMoveTest.m" lineNumber:65 description:@"Focus move test must having a container focus environment before being run."];
  }

  self->_activeNumberOfIterations = [(_UIFocusMoveTest *)self _dataSourceNumberOfIterations];
  handlerCopy[2]();
}

- (void)main
{
  if (self->_activeNumberOfIterations)
  {
    [(_UIFocusMoveTest *)self _performFocusMovementAfterDelayForMove:0 iteration:0];
  }
}

- (void)_performFocusMovementAfterDelayForMove:(unint64_t)move iteration:(unint64_t)iteration
{
  v10[1] = *MEMORY[0x1E69E9840];
  [_UIFocusMoveTest _dataSourceDelayBeforeMove:"_dataSourceDelayBeforeMove:duringIteration:" duringIteration:?];
  v8 = v7;
  if (!move)
  {
    [(_UIFocusMoveTest *)self _resetFocusIfNecessaryBeforeIteration:iteration];
    [(_UIFocusMoveTest *)self _notifyDelegateWillStartIteration:iteration];
  }

  self->_currentMove = move;
  self->_currentIteration = iteration;
  v10[0] = *MEMORY[0x1E695DA28];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(_UIFocusMoveTest *)self performSelector:sel__performFocusMovement withObject:0 afterDelay:v9 inModes:v8];
}

- (void)_performFocusMovement
{
  if ([(_UIFocusTest *)self state]== 2)
  {
    currentMove = self->_currentMove;
    currentIteration = self->_currentIteration;
    v5 = [(_UIFocusMoveTest *)self _dataSourceMaximumNumberOfMovesDuringIteration:currentIteration];
    WeakRetained = objc_loadWeakRetained(&self->_containerFocusEnvironment);
    v14 = [UIFocusSystem focusSystemForEnvironment:WeakRetained];

    v7 = [(_UIFocusMoveTest *)self _dataSourceHeadingForMove:currentMove duringIteration:currentIteration];
    delegate = [UIApp delegate];
    window = [delegate window];

    v10 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:v14];
    v11 = [[_UIFocusMovementInfo alloc] initWithHeading:v7 linearHeading:0 isInitial:1 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
    [(_UIFocusMovementRequest *)v10 setMovementInfo:v11];

    [(_UIFocusMoveTest *)self _notifyDelegateWillMoveFocusAlongHeading:v7 forMove:currentMove duringIteration:currentIteration];
    v12 = [v14 _performFocusMovement:v10];
    [(_UIFocusMoveTest *)self _notifyDelegateDidMoveFocusAlongHeading:v7 forMove:currentMove duringIteration:currentIteration];
    if (!v12 || (v13 = currentMove + v12, v13 == v5))
    {
      [(_UIFocusMoveTest *)self _notifyDelegateDidFinishIteration:++currentIteration];
      v13 = 0;
    }

    if (currentIteration == self->_activeNumberOfIterations)
    {
      [(_UIFocusTest *)self stop];
    }

    else
    {
      [(_UIFocusMoveTest *)self _performFocusMovementAfterDelayForMove:v13 iteration:currentIteration];
    }
  }
}

- (void)_resetFocusIfNecessaryBeforeIteration:(unint64_t)iteration
{
  if ([(_UIFocusMoveTest *)self _dataSourceShouldResetFocusBeforeIteration:iteration])
  {
    containerFocusEnvironment = [(_UIFocusMoveTest *)self containerFocusEnvironment];
    v6 = [UIFocusSystem focusSystemForEnvironment:containerFocusEnvironment];

    containerFocusEnvironment2 = [(_UIFocusMoveTest *)self containerFocusEnvironment];
    [v6 requestFocusUpdateToEnvironment:containerFocusEnvironment2];

    [v6 updateFocusIfNeeded];
  }
}

- (_UIFocusMoveTestDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _UIFocusMoveTest;
  delegate = [(_UIFocusTest *)&v4 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(_UIFocusMoveTest *)self delegate];

  v10.receiver = self;
  v10.super_class = _UIFocusMoveTest;
  [(_UIFocusTest *)&v10 setDelegate:delegateCopy];
  if (delegate != delegateCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFEF | v9;
  }
}

- (void)_notifyDelegateWillStartIteration:(unint64_t)iteration
{
  delegate = [(_UIFocusMoveTest *)self delegate];
  if (delegate && (*&self->_flags & 2) != 0)
  {
    v6 = delegate;
    [delegate _focusMoveTest:self willStartIteration:iteration];
    delegate = v6;
  }
}

- (void)_notifyDelegateDidFinishIteration:(unint64_t)iteration
{
  delegate = [(_UIFocusMoveTest *)self delegate];
  if (delegate && (*&self->_flags & 4) != 0)
  {
    v6 = delegate;
    [delegate _focusMoveTest:self didFinishIteration:iteration];
    delegate = v6;
  }
}

- (void)_notifyDelegateWillMoveFocusAlongHeading:(unint64_t)heading forMove:(unint64_t)move duringIteration:(unint64_t)iteration
{
  delegate = [(_UIFocusMoveTest *)self delegate];
  if (delegate && (*&self->_flags & 8) != 0)
  {
    v10 = delegate;
    [delegate _focusMoveTest:self willMoveFocusAlongHeading:heading forMove:move duringIteration:iteration];
    delegate = v10;
  }
}

- (void)_notifyDelegateDidMoveFocusAlongHeading:(unint64_t)heading forMove:(unint64_t)move duringIteration:(unint64_t)iteration
{
  delegate = [(_UIFocusMoveTest *)self delegate];
  if (delegate && (*&self->_flags & 0x10) != 0)
  {
    v10 = delegate;
    [delegate _focusMoveTest:self didMoveFocusAlongHeading:heading forMove:move duringIteration:iteration];
    delegate = v10;
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    if (objc_opt_respondsToSelector())
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFDF | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 64;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFBF | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 128;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFF7F | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFEFF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 512;
    }

    else
    {
      v9 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFDFF | v9;
  }
}

- (unint64_t)_dataSourceNumberOfIterations
{
  numberOfIterations = [(_UIFocusMoveTest *)self numberOfIterations];
  dataSource = [(_UIFocusMoveTest *)self dataSource];
  v5 = dataSource;
  if (dataSource && (*&self->_flags & 0x20) != 0)
  {
    numberOfIterations = [dataSource _numberOfIterationsInFocusMoveTest:self];
  }

  return numberOfIterations;
}

- (unint64_t)_dataSourceMaximumNumberOfMovesDuringIteration:(unint64_t)iteration
{
  maximumMovesPerIteration = [(_UIFocusMoveTest *)self maximumMovesPerIteration];
  dataSource = [(_UIFocusMoveTest *)self dataSource];
  v7 = dataSource;
  if (dataSource && (*&self->_flags & 0x40) != 0)
  {
    maximumMovesPerIteration = [dataSource _focusMoveTest:self maximumNumberOfMovesDuringIteration:iteration];
  }

  return maximumMovesPerIteration;
}

- (double)_dataSourceDelayBeforeMove:(unint64_t)move duringIteration:(unint64_t)iteration
{
  [(_UIFocusMoveTest *)self movementDelay];
  v8 = v7;
  dataSource = [(_UIFocusMoveTest *)self dataSource];
  v10 = dataSource;
  if (dataSource && (*&self->_flags & 0x80) != 0)
  {
    [dataSource _focusMoveTest:self delayBeforeMove:move duringIteration:iteration];
    v8 = v11;
  }

  return v8;
}

- (unint64_t)_dataSourceHeadingForMove:(unint64_t)move duringIteration:(unint64_t)iteration
{
  movementHeading = [(_UIFocusMoveTest *)self movementHeading];
  dataSource = [(_UIFocusMoveTest *)self dataSource];
  v9 = dataSource;
  if (dataSource && (*&self->_flags & 0x100) != 0)
  {
    movementHeading = [dataSource _focusMoveTest:self headingForMove:move duringIteration:iteration];
  }

  return movementHeading;
}

- (BOOL)_dataSourceShouldResetFocusBeforeIteration:(unint64_t)iteration
{
  resetsFocusBeforeIterations = [(_UIFocusMoveTest *)self resetsFocusBeforeIterations];
  dataSource = [(_UIFocusMoveTest *)self dataSource];
  v7 = dataSource;
  if (dataSource && (*&self->_flags & 0x200) != 0)
  {
    resetsFocusBeforeIterations = [dataSource _focusMoveTest:self shouldResetFocusBeforeIteration:iteration];
  }

  return resetsFocusBeforeIterations;
}

- (UIFocusEnvironment)containerFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_containerFocusEnvironment);

  return WeakRetained;
}

- (_UIFocusMoveTestDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end
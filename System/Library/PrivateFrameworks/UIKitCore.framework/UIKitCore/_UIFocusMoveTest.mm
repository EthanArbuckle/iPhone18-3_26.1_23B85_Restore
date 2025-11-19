@interface _UIFocusMoveTest
- (BOOL)_dataSourceShouldResetFocusBeforeIteration:(unint64_t)a3;
- (UIFocusEnvironment)containerFocusEnvironment;
- (_UIFocusMoveTest)initWithIdentifier:(id)a3;
- (_UIFocusMoveTestDataSource)dataSource;
- (_UIFocusMoveTestDelegate)delegate;
- (double)_dataSourceDelayBeforeMove:(unint64_t)a3 duringIteration:(unint64_t)a4;
- (unint64_t)_dataSourceHeadingForMove:(unint64_t)a3 duringIteration:(unint64_t)a4;
- (unint64_t)_dataSourceMaximumNumberOfMovesDuringIteration:(unint64_t)a3;
- (unint64_t)_dataSourceNumberOfIterations;
- (void)_notifyDelegateDidFinishIteration:(unint64_t)a3;
- (void)_notifyDelegateDidMoveFocusAlongHeading:(unint64_t)a3 forMove:(unint64_t)a4 duringIteration:(unint64_t)a5;
- (void)_notifyDelegateWillMoveFocusAlongHeading:(unint64_t)a3 forMove:(unint64_t)a4 duringIteration:(unint64_t)a5;
- (void)_notifyDelegateWillStartIteration:(unint64_t)a3;
- (void)_performFocusMovement;
- (void)_performFocusMovementAfterDelayForMove:(unint64_t)a3 iteration:(unint64_t)a4;
- (void)_resetFocusIfNecessaryBeforeIteration:(unint64_t)a3;
- (void)main;
- (void)prepareWithCompletionHandler:(id)a3;
- (void)reset;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation _UIFocusMoveTest

- (_UIFocusMoveTest)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIFocusMoveTest;
  result = [(_UIFocusTest *)&v4 initWithIdentifier:a3];
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

- (void)prepareWithCompletionHandler:(id)a3
{
  v7 = a3;
  v5 = [(_UIFocusMoveTest *)self containerFocusEnvironment];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIFocusMoveTest.m" lineNumber:65 description:@"Focus move test must having a container focus environment before being run."];
  }

  self->_activeNumberOfIterations = [(_UIFocusMoveTest *)self _dataSourceNumberOfIterations];
  v7[2]();
}

- (void)main
{
  if (self->_activeNumberOfIterations)
  {
    [(_UIFocusMoveTest *)self _performFocusMovementAfterDelayForMove:0 iteration:0];
  }
}

- (void)_performFocusMovementAfterDelayForMove:(unint64_t)a3 iteration:(unint64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  [_UIFocusMoveTest _dataSourceDelayBeforeMove:"_dataSourceDelayBeforeMove:duringIteration:" duringIteration:?];
  v8 = v7;
  if (!a3)
  {
    [(_UIFocusMoveTest *)self _resetFocusIfNecessaryBeforeIteration:a4];
    [(_UIFocusMoveTest *)self _notifyDelegateWillStartIteration:a4];
  }

  self->_currentMove = a3;
  self->_currentIteration = a4;
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
    v8 = [UIApp delegate];
    v9 = [v8 window];

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

- (void)_resetFocusIfNecessaryBeforeIteration:(unint64_t)a3
{
  if ([(_UIFocusMoveTest *)self _dataSourceShouldResetFocusBeforeIteration:a3])
  {
    v4 = [(_UIFocusMoveTest *)self containerFocusEnvironment];
    v6 = [UIFocusSystem focusSystemForEnvironment:v4];

    v5 = [(_UIFocusMoveTest *)self containerFocusEnvironment];
    [v6 requestFocusUpdateToEnvironment:v5];

    [v6 updateFocusIfNeeded];
  }
}

- (_UIFocusMoveTestDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _UIFocusMoveTest;
  v2 = [(_UIFocusTest *)&v4 delegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusMoveTest *)self delegate];

  v10.receiver = self;
  v10.super_class = _UIFocusMoveTest;
  [(_UIFocusTest *)&v10 setDelegate:v4];
  if (v5 != v4)
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

- (void)_notifyDelegateWillStartIteration:(unint64_t)a3
{
  v5 = [(_UIFocusMoveTest *)self delegate];
  if (v5 && (*&self->_flags & 2) != 0)
  {
    v6 = v5;
    [v5 _focusMoveTest:self willStartIteration:a3];
    v5 = v6;
  }
}

- (void)_notifyDelegateDidFinishIteration:(unint64_t)a3
{
  v5 = [(_UIFocusMoveTest *)self delegate];
  if (v5 && (*&self->_flags & 4) != 0)
  {
    v6 = v5;
    [v5 _focusMoveTest:self didFinishIteration:a3];
    v5 = v6;
  }
}

- (void)_notifyDelegateWillMoveFocusAlongHeading:(unint64_t)a3 forMove:(unint64_t)a4 duringIteration:(unint64_t)a5
{
  v9 = [(_UIFocusMoveTest *)self delegate];
  if (v9 && (*&self->_flags & 8) != 0)
  {
    v10 = v9;
    [v9 _focusMoveTest:self willMoveFocusAlongHeading:a3 forMove:a4 duringIteration:a5];
    v9 = v10;
  }
}

- (void)_notifyDelegateDidMoveFocusAlongHeading:(unint64_t)a3 forMove:(unint64_t)a4 duringIteration:(unint64_t)a5
{
  v9 = [(_UIFocusMoveTest *)self delegate];
  if (v9 && (*&self->_flags & 0x10) != 0)
  {
    v10 = v9;
    [v9 _focusMoveTest:self didMoveFocusAlongHeading:a3 forMove:a4 duringIteration:a5];
    v9 = v10;
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
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
  v3 = [(_UIFocusMoveTest *)self numberOfIterations];
  v4 = [(_UIFocusMoveTest *)self dataSource];
  v5 = v4;
  if (v4 && (*&self->_flags & 0x20) != 0)
  {
    v3 = [v4 _numberOfIterationsInFocusMoveTest:self];
  }

  return v3;
}

- (unint64_t)_dataSourceMaximumNumberOfMovesDuringIteration:(unint64_t)a3
{
  v5 = [(_UIFocusMoveTest *)self maximumMovesPerIteration];
  v6 = [(_UIFocusMoveTest *)self dataSource];
  v7 = v6;
  if (v6 && (*&self->_flags & 0x40) != 0)
  {
    v5 = [v6 _focusMoveTest:self maximumNumberOfMovesDuringIteration:a3];
  }

  return v5;
}

- (double)_dataSourceDelayBeforeMove:(unint64_t)a3 duringIteration:(unint64_t)a4
{
  [(_UIFocusMoveTest *)self movementDelay];
  v8 = v7;
  v9 = [(_UIFocusMoveTest *)self dataSource];
  v10 = v9;
  if (v9 && (*&self->_flags & 0x80) != 0)
  {
    [v9 _focusMoveTest:self delayBeforeMove:a3 duringIteration:a4];
    v8 = v11;
  }

  return v8;
}

- (unint64_t)_dataSourceHeadingForMove:(unint64_t)a3 duringIteration:(unint64_t)a4
{
  v7 = [(_UIFocusMoveTest *)self movementHeading];
  v8 = [(_UIFocusMoveTest *)self dataSource];
  v9 = v8;
  if (v8 && (*&self->_flags & 0x100) != 0)
  {
    v7 = [v8 _focusMoveTest:self headingForMove:a3 duringIteration:a4];
  }

  return v7;
}

- (BOOL)_dataSourceShouldResetFocusBeforeIteration:(unint64_t)a3
{
  v5 = [(_UIFocusMoveTest *)self resetsFocusBeforeIterations];
  v6 = [(_UIFocusMoveTest *)self dataSource];
  v7 = v6;
  if (v6 && (*&self->_flags & 0x200) != 0)
  {
    v5 = [v6 _focusMoveTest:self shouldResetFocusBeforeIteration:a3];
  }

  return v5;
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
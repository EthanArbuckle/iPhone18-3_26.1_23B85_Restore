@interface _UITextUndoManager
- (BOOL)canRedo;
- (BOOL)canUndo;
- (UITextInputController)inputController;
- (void)redo;
- (void)removeAllActions;
- (void)undo;
@end

@implementation _UITextUndoManager

- (void)removeAllActions
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  v4 = [WeakRetained dontRemoveAllActions];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained(&self->_inputController);
    [v5 undoManagerWillRemoveAllActions];

    v6 = objc_loadWeakRetained(&self->_inputController);
    [v6 stopCoalescing];

    v7.receiver = self;
    v7.super_class = _UITextUndoManager;
    [(_UITextUndoManager *)&v7 removeAllActions];
  }
}

- (BOOL)canUndo
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  if (WeakRetained && (v4 = objc_loadWeakRetained(&self->_inputController), v5 = [v4 isWritingToolsStreamingReplacements], v4, (v5 & 1) == 0))
  {
    if (!+[UIDictationController isRunning](UIDictationController, "isRunning") || (v6 = +[UIDictationController canUndoOrRedo]))
    {
      v8.receiver = self;
      v8.super_class = _UITextUndoManager;
      LOBYTE(v6) = [(_UITextUndoManager *)&v8 canUndo];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)canRedo
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  if (WeakRetained && (v4 = objc_loadWeakRetained(&self->_inputController), v5 = [v4 isWritingToolsStreamingReplacements], v4, (v5 & 1) == 0))
  {
    if (!+[UIDictationController isRunning](UIDictationController, "isRunning") || (v6 = +[UIDictationController canUndoOrRedo]))
    {
      v8.receiver = self;
      v8.super_class = _UITextUndoManager;
      LOBYTE(v6) = [(_UITextUndoManager *)&v8 canRedo];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)undo
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained undoManagerWillBeginUndoRedo];

  v5.receiver = self;
  v5.super_class = _UITextUndoManager;
  [(_UITextUndoManager *)&v5 undo];
  v4 = objc_loadWeakRetained(&self->_inputController);
  [v4 undoManagerDidFinishUndoRedo];
}

- (void)redo
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);
  [WeakRetained undoManagerWillBeginUndoRedo];

  v5.receiver = self;
  v5.super_class = _UITextUndoManager;
  [(_UITextUndoManager *)&v5 redo];
  v4 = objc_loadWeakRetained(&self->_inputController);
  [v4 undoManagerDidFinishUndoRedo];
}

- (UITextInputController)inputController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  return WeakRetained;
}

@end
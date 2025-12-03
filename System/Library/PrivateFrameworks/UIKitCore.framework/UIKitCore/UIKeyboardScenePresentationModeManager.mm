@interface UIKeyboardScenePresentationModeManager
- (UIKeyboardScenePresentationModeManagerDelegate)delegate;
- (unint64_t)determinePresentationMode;
- (unint64_t)determineiPadPresentationMode;
- (unint64_t)presentationMode;
- (void)_enhancedWindowingModeEnabledDidChange:(id)change;
- (void)didChangeToPresentationMode:(unint64_t)mode;
- (void)enhancedWindowingModeEnabledDidChange:(BOOL)change;
@end

@implementation UIKeyboardScenePresentationModeManager

- (unint64_t)presentationMode
{
  determinePresentationMode = [(UIKeyboardScenePresentationModeManager *)self determinePresentationMode];
  v4 = determinePresentationMode;
  if (self->_currentPresentationMode != determinePresentationMode)
  {
    self->_currentPresentationMode = determinePresentationMode;
    [(UIKeyboardScenePresentationModeManager *)self didChangeToPresentationMode:?];
    return self->_currentPresentationMode;
  }

  return v4;
}

- (unint64_t)determinePresentationMode
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {

    return [(UIKeyboardScenePresentationModeManager *)self determineiPadPresentationMode];
  }

  else if (userInterfaceIdiom)
  {
    return 0;
  }

  else
  {

    return [(UIKeyboardScenePresentationModeManager *)self determineiPhonePresentationMode];
  }
}

- (unint64_t)determineiPadPresentationMode
{
  if (self->_enhancedWindowingModeEnabled)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)enhancedWindowingModeEnabledDidChange:(BOOL)change
{
  if (self->_enhancedWindowingModeEnabled != change)
  {
    self->_enhancedWindowingModeEnabled = change;
    [(UIKeyboardScenePresentationModeManager *)self presentationMode];
  }
}

- (void)_enhancedWindowingModeEnabledDidChange:(id)change
{
  bOOLValue = [change BOOLValue];

  [(UIKeyboardScenePresentationModeManager *)self enhancedWindowingModeEnabledDidChange:bOOLValue];
}

- (void)didChangeToPresentationMode:(unint64_t)mode
{
  delegate = [(UIKeyboardScenePresentationModeManager *)self delegate];

  if (delegate)
  {
    delegate2 = [(UIKeyboardScenePresentationModeManager *)self delegate];
    [delegate2 scenePresentationModeManager:self didChangeToMode:mode];
  }
}

- (UIKeyboardScenePresentationModeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
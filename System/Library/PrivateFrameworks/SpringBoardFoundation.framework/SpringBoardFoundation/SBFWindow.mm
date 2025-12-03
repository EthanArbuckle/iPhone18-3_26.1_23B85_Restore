@interface SBFWindow
- (BOOL)_isEffectivelyHiddenForKeyWindowStack;
- (_SBFKeyWindowStack)_keyWindowStack;
- (void)_makeKeyFromKeyWindowStack;
- (void)dealloc;
- (void)makeKeyWindow;
- (void)resignAsKeyWindow;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SBFWindow

- (void)makeKeyWindow
{
  if (__sb__runningInSpringBoard())
  {
    _keyWindowStack = [(SBFWindow *)self _keyWindowStack];
    [_keyWindowStack pushKeyWindow:self];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBFWindow;
    [(SBFWindow *)&v4 makeKeyWindow];
  }
}

- (_SBFKeyWindowStack)_keyWindowStack
{
  keyWindowStack = self->_keyWindowStack;
  if (!keyWindowStack)
  {
    v4 = +[_SBFKeyWindowStack sharedInstance];
    v5 = self->_keyWindowStack;
    self->_keyWindowStack = v4;

    keyWindowStack = self->_keyWindowStack;
  }

  return keyWindowStack;
}

- (BOOL)_isEffectivelyHiddenForKeyWindowStack
{
  if (self->_isHiddenOverride)
  {
    return [(NSNumber *)self->_isHiddenOverride BOOLValue];
  }

  else
  {
    return [(SBFWindow *)self isHidden];
  }
}

- (void)_makeKeyFromKeyWindowStack
{
  v2.receiver = self;
  v2.super_class = SBFWindow;
  [(SBFWindow *)&v2 makeKeyWindow];
}

- (void)resignAsKeyWindow
{
  if (__sb__runningInSpringBoard())
  {
    _keyWindowStack = [(SBFWindow *)self _keyWindowStack];
    [_keyWindowStack popKeyWindow:self];
  }
}

- (void)dealloc
{
  _keyWindowStack = [(SBFWindow *)self _keyWindowStack];
  [_keyWindowStack noteWindowDeallocated:self];

  v4.receiver = self;
  v4.super_class = SBFWindow;
  [(SBFWindow *)&v4 dealloc];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (__sb__runningInSpringBoard())
  {
    isHidden = [(SBFWindow *)self isHidden];
    if (hiddenCopy)
    {
      if ((isHidden & 1) == 0)
      {
        p_isHiddenOverride = &self->_isHiddenOverride;
        isHiddenOverride = self->_isHiddenOverride;
        self->_isHiddenOverride = MEMORY[0x1E695E118];

        _keyWindowStack = [(SBFWindow *)self _keyWindowStack];
        [_keyWindowStack noteWindowHidden:self];
LABEL_7:

        v10 = *p_isHiddenOverride;
        *p_isHiddenOverride = 0;
      }
    }

    else if (isHidden)
    {
      p_isHiddenOverride = &self->_isHiddenOverride;
      v9 = self->_isHiddenOverride;
      self->_isHiddenOverride = MEMORY[0x1E695E110];

      _keyWindowStack = [(SBFWindow *)self _keyWindowStack];
      [_keyWindowStack noteWindowUnhidden:self];
      goto LABEL_7;
    }
  }

  v11.receiver = self;
  v11.super_class = SBFWindow;
  [(SBFWindow *)&v11 setHidden:hiddenCopy];
}

@end
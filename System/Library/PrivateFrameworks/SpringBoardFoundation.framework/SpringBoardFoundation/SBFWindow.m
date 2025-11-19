@interface SBFWindow
- (BOOL)_isEffectivelyHiddenForKeyWindowStack;
- (_SBFKeyWindowStack)_keyWindowStack;
- (void)_makeKeyFromKeyWindowStack;
- (void)dealloc;
- (void)makeKeyWindow;
- (void)resignAsKeyWindow;
- (void)setHidden:(BOOL)a3;
@end

@implementation SBFWindow

- (void)makeKeyWindow
{
  if (__sb__runningInSpringBoard())
  {
    v3 = [(SBFWindow *)self _keyWindowStack];
    [v3 pushKeyWindow:self];
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
    v3 = [(SBFWindow *)self _keyWindowStack];
    [v3 popKeyWindow:self];
  }
}

- (void)dealloc
{
  v3 = [(SBFWindow *)self _keyWindowStack];
  [v3 noteWindowDeallocated:self];

  v4.receiver = self;
  v4.super_class = SBFWindow;
  [(SBFWindow *)&v4 dealloc];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if (__sb__runningInSpringBoard())
  {
    v5 = [(SBFWindow *)self isHidden];
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        p_isHiddenOverride = &self->_isHiddenOverride;
        isHiddenOverride = self->_isHiddenOverride;
        self->_isHiddenOverride = MEMORY[0x1E695E118];

        v8 = [(SBFWindow *)self _keyWindowStack];
        [v8 noteWindowHidden:self];
LABEL_7:

        v10 = *p_isHiddenOverride;
        *p_isHiddenOverride = 0;
      }
    }

    else if (v5)
    {
      p_isHiddenOverride = &self->_isHiddenOverride;
      v9 = self->_isHiddenOverride;
      self->_isHiddenOverride = MEMORY[0x1E695E110];

      v8 = [(SBFWindow *)self _keyWindowStack];
      [v8 noteWindowUnhidden:self];
      goto LABEL_7;
    }
  }

  v11.receiver = self;
  v11.super_class = SBFWindow;
  [(SBFWindow *)&v11 setHidden:v3];
}

@end
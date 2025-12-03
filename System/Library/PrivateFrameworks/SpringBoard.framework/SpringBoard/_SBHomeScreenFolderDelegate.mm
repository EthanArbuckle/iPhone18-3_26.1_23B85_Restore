@interface _SBHomeScreenFolderDelegate
- (BOOL)respondsToSelector:(SEL)selector;
- (_SBHomeScreenFolderDelegate)initWithForwardingTarget:(id)target;
- (id)backgroundViewForDockForRootFolderController:(id)controller;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation _SBHomeScreenFolderDelegate

- (_SBHomeScreenFolderDelegate)initWithForwardingTarget:(id)target
{
  targetCopy = target;
  if (targetCopy)
  {
    v10.receiver = self;
    v10.super_class = _SBHomeScreenFolderDelegate;
    v6 = [(_SBHomeScreenFolderDelegate *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_forwardingTarget, target);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = self->_forwardingTarget;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SBHomeScreenFolderDelegate;
    v5 = [(_SBHomeScreenFolderDelegate *)&v7 forwardingTargetForSelector:selector];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = _SBHomeScreenFolderDelegate;
  if ([(_SBHomeScreenFolderDelegate *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (id)backgroundViewForDockForRootFolderController:(id)controller
{
  dockStyle = [(_SBHomeScreenFolderDelegate *)self dockStyle];
  switch(dockStyle)
  {
    case 2:
      v4 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = MEMORY[0x277D75348];
      v7 = 0.2;
      goto LABEL_7;
    case 1:
      v4 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = MEMORY[0x277D75348];
      v7 = 0.8;
LABEL_7:
      v5 = [v6 colorWithWhite:v7 alpha:0.6];
      goto LABEL_8;
    case 0:
      v4 = objc_alloc_init(MEMORY[0x277D75D18]);
      v5 = [MEMORY[0x277D75348] colorWithDynamicProvider:&__block_literal_global_323];
LABEL_8:
      v8 = v5;
      [v4 setBackgroundColor:v5];

      goto LABEL_10;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

@end
@interface _UIInterfaceActionSelectByPressGestureRecognizer
- (UIFocusedInterfaceActionPressDelegate)pressDelegate;
- (UIInterfaceAction)interfaceActionOnPressBegan;
- (UIInterfaceActionGroupView)actionGroupView;
- (_UIInterfaceActionSelectByPressGestureRecognizer)initWithFocusedInterfaceActionPressDelegate:(id)delegate;
- (void)_gestureChanged:(id)changed;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reset;
@end

@implementation _UIInterfaceActionSelectByPressGestureRecognizer

- (_UIInterfaceActionSelectByPressGestureRecognizer)initWithFocusedInterfaceActionPressDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UIInterfaceActionSelectByPressGestureRecognizer;
  v5 = [(UITapGestureRecognizer *)&v8 initWithTarget:self action:sel__gestureChanged_];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pressDelegate, delegateCopy);
    [(UITapGestureRecognizer *)v6 setAllowedPressTypes:&unk_1EFE2B338];
    [(UIGestureRecognizer *)v6 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = _UIInterfaceActionSelectByPressGestureRecognizer;
  [(UITapGestureRecognizer *)&v7 pressesBegan:began withEvent:event];
  pressDelegate = [(_UIInterfaceActionSelectByPressGestureRecognizer *)self pressDelegate];
  focusedInterfaceAction = [pressDelegate focusedInterfaceAction];
  [(_UIInterfaceActionSelectByPressGestureRecognizer *)self setInterfaceActionOnPressBegan:focusedInterfaceAction];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  pressDelegate = [(_UIInterfaceActionSelectByPressGestureRecognizer *)self pressDelegate];
  focusedInterfaceAction = [pressDelegate focusedInterfaceAction];

  interfaceActionOnPressBegan = [(_UIInterfaceActionSelectByPressGestureRecognizer *)self interfaceActionOnPressBegan];

  if (focusedInterfaceAction == interfaceActionOnPressBegan)
  {
    v11.receiver = self;
    v11.super_class = _UIInterfaceActionSelectByPressGestureRecognizer;
    [(UITapGestureRecognizer *)&v11 pressesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionSelectByPressGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
  [(_UIInterfaceActionSelectByPressGestureRecognizer *)self setInterfaceActionOnPressBegan:0];
}

- (void)_gestureChanged:(id)changed
{
  if ([changed state] == 3)
  {
    pressDelegate = [(_UIInterfaceActionSelectByPressGestureRecognizer *)self pressDelegate];
    focusedInterfaceAction = [pressDelegate focusedInterfaceAction];

    if (focusedInterfaceAction)
    {
      pressDelegate2 = [(_UIInterfaceActionSelectByPressGestureRecognizer *)self pressDelegate];
      [pressDelegate2 handlePressedFocusedInterfaceAction:focusedInterfaceAction];
    }
  }
}

- (UIFocusedInterfaceActionPressDelegate)pressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pressDelegate);

  return WeakRetained;
}

- (UIInterfaceActionGroupView)actionGroupView
{
  WeakRetained = objc_loadWeakRetained(&self->_actionGroupView);

  return WeakRetained;
}

- (UIInterfaceAction)interfaceActionOnPressBegan
{
  WeakRetained = objc_loadWeakRetained(&self->_interfaceActionOnPressBegan);

  return WeakRetained;
}

@end
@interface SBFluidSwitcherContentView
- (BOOL)canBecomeFocused;
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (CGSize)visibleSize;
- (SBFluidSwitcherContentViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)preferredFocusEnvironments;
@end

@implementation SBFluidSwitcherContentView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherContentView;
  v5 = [(SBFluidSwitcherContentView *)&v8 hitTest:event withEvent:test.x, test.y];
  if ([(SBFluidSwitcherContentView *)self passesTouchesThrough]&& v5 == self)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (CGPoint)contentOffset
{
  delegate = [(SBFluidSwitcherContentView *)self delegate];
  switcherScrollView = [delegate switcherScrollView];
  [switcherScrollView contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)contentSize
{
  delegate = [(SBFluidSwitcherContentView *)self delegate];
  switcherScrollView = [delegate switcherScrollView];
  [switcherScrollView contentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)visibleSize
{
  [(SBFluidSwitcherContentView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x277D85DE8];
  delegate = [(SBFluidSwitcherContentView *)self delegate];
  defaultFocusItem = [delegate defaultFocusItem];

  if (defaultFocusItem)
  {
    v9[0] = defaultFocusItem;
    preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentView;
    preferredFocusEnvironments = [(SBFluidSwitcherContentView *)&v8 preferredFocusEnvironments];
  }

  v6 = preferredFocusEnvironments;

  return v6;
}

- (BOOL)canBecomeFocused
{
  delegate = [(SBFluidSwitcherContentView *)self delegate];
  defaultFocusItem = [delegate defaultFocusItem];

  return defaultFocusItem == 0;
}

- (SBFluidSwitcherContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
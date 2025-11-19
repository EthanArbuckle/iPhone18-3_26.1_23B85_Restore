@interface SBFluidSwitcherContentView
- (BOOL)canBecomeFocused;
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (CGSize)visibleSize;
- (SBFluidSwitcherContentViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredFocusEnvironments;
@end

@implementation SBFluidSwitcherContentView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherContentView;
  v5 = [(SBFluidSwitcherContentView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
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
  v2 = [(SBFluidSwitcherContentView *)self delegate];
  v3 = [v2 switcherScrollView];
  [v3 contentOffset];
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
  v2 = [(SBFluidSwitcherContentView *)self delegate];
  v3 = [v2 switcherScrollView];
  [v3 contentSize];
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
  v3 = [(SBFluidSwitcherContentView *)self delegate];
  v4 = [v3 defaultFocusItem];

  if (v4)
  {
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBFluidSwitcherContentView;
    v5 = [(SBFluidSwitcherContentView *)&v8 preferredFocusEnvironments];
  }

  v6 = v5;

  return v6;
}

- (BOOL)canBecomeFocused
{
  v2 = [(SBFluidSwitcherContentView *)self delegate];
  v3 = [v2 defaultFocusItem];

  return v3 == 0;
}

- (SBFluidSwitcherContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
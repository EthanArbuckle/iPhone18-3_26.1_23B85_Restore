@interface SBHStackConfigurationBackgroundDimmingView
- (SBIconListView)iconListView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBHStackConfigurationBackgroundDimmingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBHStackConfigurationBackgroundDimmingView;
  v8 = [(SBHStackConfigurationBackgroundDimmingView *)&v11 hitTest:v7 withEvent:x, y];
  if (v8 == self && [v7 type] == 9)
  {
    v9 = [(SBHStackConfigurationBackgroundDimmingView *)self iconListView];

    v8 = v9;
  }

  return v8;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

@end
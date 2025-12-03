@interface SBHStackConfigurationBackgroundDimmingView
- (SBIconListView)iconListView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBHStackConfigurationBackgroundDimmingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBHStackConfigurationBackgroundDimmingView;
  v8 = [(SBHStackConfigurationBackgroundDimmingView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (v8 == self && [eventCopy type] == 9)
  {
    iconListView = [(SBHStackConfigurationBackgroundDimmingView *)self iconListView];

    v8 = iconListView;
  }

  return v8;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

@end
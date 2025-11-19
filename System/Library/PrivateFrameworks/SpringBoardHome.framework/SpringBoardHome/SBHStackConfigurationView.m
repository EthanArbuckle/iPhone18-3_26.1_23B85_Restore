@interface SBHStackConfigurationView
- (SBHStackConfigurationViewHitTestDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBHStackConfigurationView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBHStackConfigurationView;
  v8 = [(SBHStackConfigurationView *)&v12 hitTest:v7 withEvent:x, y];
  v9 = [(SBHStackConfigurationView *)self delegate];
  v10 = v9;
  if (v9)
  {
    [v9 stackConfigurationView:self didHitTestView:v8 atPoint:v7 withEvent:{x, y}];
  }

  return v8;
}

- (SBHStackConfigurationViewHitTestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
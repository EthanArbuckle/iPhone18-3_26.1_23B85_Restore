@interface SBHStackConfigurationView
- (SBHStackConfigurationViewHitTestDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBHStackConfigurationView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBHStackConfigurationView;
  v8 = [(SBHStackConfigurationView *)&v12 hitTest:eventCopy withEvent:x, y];
  delegate = [(SBHStackConfigurationView *)self delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate stackConfigurationView:self didHitTestView:v8 atPoint:eventCopy withEvent:{x, y}];
  }

  return v8;
}

- (SBHStackConfigurationViewHitTestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
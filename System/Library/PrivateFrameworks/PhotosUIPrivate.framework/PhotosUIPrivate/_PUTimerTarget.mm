@interface _PUTimerTarget
- (SEL)selector;
- (id)target;
- (void)handleTimer:(id)a3;
- (void)setSelector:(SEL)a3;
@end

@implementation _PUTimerTarget

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)handleTimer:(id)a3
{
  v4 = a3;
  v5 = [(_PUTimerTarget *)self target];
  [v5 performSelector:-[_PUTimerTarget selector](self withObject:{"selector"), v4}];
}

@end
@interface _PXTimerTarget
- (SEL)selector;
- (id)target;
- (void)handleTimer:(id)timer;
- (void)setSelector:(SEL)selector;
@end

@implementation _PXTimerTarget

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
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

- (void)handleTimer:(id)timer
{
  timerCopy = timer;
  target = [(_PXTimerTarget *)self target];
  [target performSelector:-[_PXTimerTarget selector](self withObject:{"selector"), timerCopy}];
}

@end
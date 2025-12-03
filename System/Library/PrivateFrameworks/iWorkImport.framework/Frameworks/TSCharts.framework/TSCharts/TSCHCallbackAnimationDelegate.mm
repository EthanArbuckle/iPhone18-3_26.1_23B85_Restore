@interface TSCHCallbackAnimationDelegate
- (SEL)selector;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)setSelector:(SEL)selector;
@end

@implementation TSCHCallbackAnimationDelegate

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  target = self->target;
  if (self->selector)
  {
    selector = self->selector;
  }

  else
  {
    selector = 0;
  }

  stopCopy = stop;
  v11 = objc_msgSend_methodForSelector_(target, v7, v8, v9, v10, selector);
  if (self->selector)
  {
    v12 = self->selector;
  }

  else
  {
    v12 = 0;
  }

  v11(self->target, v12);
}

- (SEL)selector
{
  if (self->selector)
  {
    return self->selector;
  }

  else
  {
    return 0;
  }
}

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

  self->selector = selectorCopy;
}

@end
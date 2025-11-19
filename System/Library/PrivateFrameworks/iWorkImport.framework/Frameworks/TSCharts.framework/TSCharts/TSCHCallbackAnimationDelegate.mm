@interface TSCHCallbackAnimationDelegate
- (SEL)selector;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)setSelector:(SEL)a3;
@end

@implementation TSCHCallbackAnimationDelegate

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
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

  v13 = a3;
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

  self->selector = v3;
}

@end
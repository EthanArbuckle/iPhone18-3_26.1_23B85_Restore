@interface SSXPCServerObserver
- (BOOL)isEqual:(id)equal;
- (SEL)selector;
- (void)setSelector:(SEL)selector;
@end

@implementation SSXPCServerObserver

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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  observer = [equal observer];
  observer = self->_observer;
  if (observer == observer)
  {
    selector = [equal selector];
  }

  else
  {
    v7 = [observer isEqual:?];
    selector = [equal selector];
    if (!v7)
    {
      return 0;
    }
  }

  v10 = selector;
  selector = self->_selector;
  if (selector)
  {
    v12 = self->_selector;
    if (v10 == selector)
    {
      return 1;
    }
  }

  else
  {
    if (!selector)
    {
      return 1;
    }

    v12 = 0;
  }

  return sel_isEqual(v12, v10);
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

  self->_selector = selectorCopy;
}

@end
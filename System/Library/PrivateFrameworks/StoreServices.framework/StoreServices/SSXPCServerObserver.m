@interface SSXPCServerObserver
- (BOOL)isEqual:(id)a3;
- (SEL)selector;
- (void)setSelector:(SEL)a3;
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 observer];
  observer = self->_observer;
  if (observer == v5)
  {
    v8 = [a3 selector];
  }

  else
  {
    v7 = [observer isEqual:?];
    v8 = [a3 selector];
    if (!v7)
    {
      return 0;
    }
  }

  v10 = v8;
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
    if (!v8)
    {
      return 1;
    }

    v12 = 0;
  }

  return sel_isEqual(v12, v10);
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

  self->_selector = v3;
}

@end
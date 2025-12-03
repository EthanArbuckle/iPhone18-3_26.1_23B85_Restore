@interface SCRCTargetSelector
+ (id)targetSelectorWithTarget:(id)target selector:(SEL)selector;
- (SCRCTargetSelector)initWithTarget:(id)target selector:(SEL)selector;
- (SEL)selector;
- (id)target;
@end

@implementation SCRCTargetSelector

+ (id)targetSelectorWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v7 = [[self alloc] initWithTarget:targetCopy selector:selector];

  return v7;
}

- (SCRCTargetSelector)initWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = SCRCTargetSelector;
  v7 = [(SCRCTargetSelector *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_selector = selectorCopy;
  }

  return v8;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
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

@end
@interface PFAssertionInfo
- (SEL)selector;
- (id)description;
- (id)prettyMethodName;
- (void)setSelector:(SEL)selector;
@end

@implementation PFAssertionInfo

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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  prettyMethodName = [(PFAssertionInfo *)self prettyMethodName];
  message = [(PFAssertionInfo *)self message];
  v8 = [v3 stringWithFormat:@"<%@: %p> failure in %@: %@", v5, self, prettyMethodName, message];

  return v8;
}

- (id)prettyMethodName
{
  functionName = [(PFAssertionInfo *)self functionName];

  if (functionName)
  {
    functionName2 = [(PFAssertionInfo *)self functionName];
  }

  else
  {
    isClassMethod = [(PFAssertionInfo *)self isClassMethod];
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromClass([(PFAssertionInfo *)self objectClass]);
    v8 = NSStringFromSelector([(PFAssertionInfo *)self selector]);
    v9 = 45;
    if (isClassMethod)
    {
      v9 = 43;
    }

    functionName2 = [v6 stringWithFormat:@"%c[%@ %@]", v9, v7, v8];
  }

  return functionName2;
}

@end
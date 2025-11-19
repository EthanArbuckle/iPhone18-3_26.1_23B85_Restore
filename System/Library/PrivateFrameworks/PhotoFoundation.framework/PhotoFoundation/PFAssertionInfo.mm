@interface PFAssertionInfo
- (SEL)selector;
- (id)description;
- (id)prettyMethodName;
- (void)setSelector:(SEL)a3;
@end

@implementation PFAssertionInfo

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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PFAssertionInfo *)self prettyMethodName];
  v7 = [(PFAssertionInfo *)self message];
  v8 = [v3 stringWithFormat:@"<%@: %p> failure in %@: %@", v5, self, v6, v7];

  return v8;
}

- (id)prettyMethodName
{
  v3 = [(PFAssertionInfo *)self functionName];

  if (v3)
  {
    v4 = [(PFAssertionInfo *)self functionName];
  }

  else
  {
    v5 = [(PFAssertionInfo *)self isClassMethod];
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromClass([(PFAssertionInfo *)self objectClass]);
    v8 = NSStringFromSelector([(PFAssertionInfo *)self selector]);
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v4 = [v6 stringWithFormat:@"%c[%@ %@]", v9, v7, v8];
  }

  return v4;
}

@end
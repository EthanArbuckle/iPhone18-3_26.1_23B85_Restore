@interface TSKACReadArguments
- (SEL)selector;
- (TSKACReadArguments)initWithSelector:(SEL)selector target:(id)target argument:(void *)argument argument2:(id)argument2;
- (void)dealloc;
@end

@implementation TSKACReadArguments

- (TSKACReadArguments)initWithSelector:(SEL)selector target:(id)target argument:(void *)argument argument2:(id)argument2
{
  v14.receiver = self;
  v14.super_class = TSKACReadArguments;
  v10 = [(TSKACReadArguments *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v10->_selector = selectorCopy;
    v10->_target = target;
    v10->_argument = argument;
    v10->_argument2 = argument2;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKACReadArguments;
  [(TSKACReadArguments *)&v3 dealloc];
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
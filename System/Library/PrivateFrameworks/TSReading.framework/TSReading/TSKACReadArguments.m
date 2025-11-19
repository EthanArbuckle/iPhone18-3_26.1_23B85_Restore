@interface TSKACReadArguments
- (SEL)selector;
- (TSKACReadArguments)initWithSelector:(SEL)a3 target:(id)a4 argument:(void *)a5 argument2:(id)a6;
- (void)dealloc;
@end

@implementation TSKACReadArguments

- (TSKACReadArguments)initWithSelector:(SEL)a3 target:(id)a4 argument:(void *)a5 argument2:(id)a6
{
  v14.receiver = self;
  v14.super_class = TSKACReadArguments;
  v10 = [(TSKACReadArguments *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = 0;
    }

    v10->_selector = v12;
    v10->_target = a4;
    v10->_argument = a5;
    v10->_argument2 = a6;
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
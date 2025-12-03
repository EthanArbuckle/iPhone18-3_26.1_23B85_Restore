@interface NSMethodSignature
- (int64_t)getArgumentIndexForClass:(Class)class;
@end

@implementation NSMethodSignature

- (int64_t)getArgumentIndexForClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [NSString stringWithFormat:@"@%@", v4];

  if ([(NSMethodSignature *)self numberOfArguments])
  {
    v6 = 0;
    while (strcmp(-[NSMethodSignature getArgumentTypeAtIndex:](self, "getArgumentTypeAtIndex:", v6), [v5 UTF8String]))
    {
      if (++v6 >= [(NSMethodSignature *)self numberOfArguments])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

@end
@interface NSMethodSignature(RTExtensions)
- (uint64_t)argumentIndexForClass:()RTExtensions;
@end

@implementation NSMethodSignature(RTExtensions)

- (uint64_t)argumentIndexForClass:()RTExtensions
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromClass(aClass);
  v6 = [v4 stringWithFormat:@"@%@", v5];

  if ([self numberOfArguments])
  {
    v7 = 0;
    while (strcmp([self getArgumentTypeAtIndex:v7], objc_msgSend(v6, "UTF8String")))
    {
      if (++v7 >= [self numberOfArguments])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

@end
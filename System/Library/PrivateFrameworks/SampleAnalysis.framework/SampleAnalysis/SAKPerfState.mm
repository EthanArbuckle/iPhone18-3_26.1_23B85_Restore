@interface SAKPerfState
- (void)nextSampleForThread:(int)thread isOnCore:;
@end

@implementation SAKPerfState

- (void)nextSampleForThread:(int)thread isOnCore:
{
  if (self)
  {
    v4 = *(self + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v6 = v5;
    if (thread)
    {
      [v4 addObject:v5];
    }

    else
    {
      [v4 removeObject:v5];
    }
  }
}

@end
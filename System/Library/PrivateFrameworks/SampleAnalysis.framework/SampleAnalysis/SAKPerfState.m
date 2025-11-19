@interface SAKPerfState
- (void)nextSampleForThread:(int)a3 isOnCore:;
@end

@implementation SAKPerfState

- (void)nextSampleForThread:(int)a3 isOnCore:
{
  if (a1)
  {
    v4 = *(a1 + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v6 = v5;
    if (a3)
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
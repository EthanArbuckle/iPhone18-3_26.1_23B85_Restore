@interface NSMutableArray(SCRCArrayExtras)
- (void)insertObjects:()SCRCArrayExtras atIndex:;
@end

@implementation NSMutableArray(SCRCArrayExtras)

- (void)insertObjects:()SCRCArrayExtras atIndex:
{
  v9 = a3;
  v6 = [v9 count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      v8 = [v9 objectAtIndex:v7];
      [self insertObject:v8 atIndex:a4];

      --v7;
    }

    while (v7 != -1);
  }
}

@end
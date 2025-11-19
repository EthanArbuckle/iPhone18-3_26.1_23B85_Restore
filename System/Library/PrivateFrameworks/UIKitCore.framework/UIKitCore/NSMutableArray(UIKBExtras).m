@interface NSMutableArray(UIKBExtras)
- (void)_kb_reverse;
@end

@implementation NSMutableArray(UIKBExtras)

- (void)_kb_reverse
{
  v2 = [a1 count];
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = v2 >> 1;
    v5 = v2 - 1;
    do
    {
      v6 = [a1 objectAtIndex:v3];
      v7 = [a1 objectAtIndex:v5];
      [a1 replaceObjectAtIndex:v3 withObject:v7];

      [a1 replaceObjectAtIndex:v5 withObject:v6];
      ++v3;
      --v5;
    }

    while (v4 != v3);
  }
}

@end
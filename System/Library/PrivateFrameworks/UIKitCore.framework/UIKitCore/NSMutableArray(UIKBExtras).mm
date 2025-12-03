@interface NSMutableArray(UIKBExtras)
- (void)_kb_reverse;
@end

@implementation NSMutableArray(UIKBExtras)

- (void)_kb_reverse
{
  v2 = [self count];
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = v2 >> 1;
    v5 = v2 - 1;
    do
    {
      v6 = [self objectAtIndex:v3];
      v7 = [self objectAtIndex:v5];
      [self replaceObjectAtIndex:v3 withObject:v7];

      [self replaceObjectAtIndex:v5 withObject:v6];
      ++v3;
      --v5;
    }

    while (v4 != v3);
  }
}

@end
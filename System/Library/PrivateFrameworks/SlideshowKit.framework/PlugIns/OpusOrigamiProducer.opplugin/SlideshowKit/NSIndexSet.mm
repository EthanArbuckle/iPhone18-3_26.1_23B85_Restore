@interface NSIndexSet
- (NSIndexSet)indexSetWithMaximum:(int64_t)maximum;
- (NSIndexSet)indexSetWithOffset:(int64_t)offset;
- (int64_t)indexAtIndex:(int64_t)index;
- (int64_t)locationOfIndex:(int64_t)index;
@end

@implementation NSIndexSet

- (int64_t)locationOfIndex:(int64_t)index
{
  firstIndex = [(NSIndexSet *)self firstIndex];
  v6 = 0;
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = firstIndex;
    if (firstIndex != index)
    {
      v6 = 0;
      do
      {
        v8 = [(NSIndexSet *)self indexGreaterThanIndex:v7];
        ++v6;
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v7 = v8;
      }

      while (v8 != index);
    }
  }

  return v6;
}

- (int64_t)indexAtIndex:(int64_t)index
{
  firstIndex = [(NSIndexSet *)self firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL && index)
  {
    v6 = index - 1;
    do
    {
      v7 = v6;
      firstIndex = [(NSIndexSet *)self indexGreaterThanIndex:firstIndex];
      if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return firstIndex;
}

- (NSIndexSet)indexSetWithOffset:(int64_t)offset
{
  v5 = +[NSMutableIndexSet indexSet];
  firstIndex = [(NSIndexSet *)self firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)self indexGreaterThanIndex:i])
    {
      [(NSIndexSet *)v5 addIndex:i + offset];
    }
  }

  return v5;
}

- (NSIndexSet)indexSetWithMaximum:(int64_t)maximum
{
  v5 = +[NSMutableIndexSet indexSet];
  firstIndex = [(NSIndexSet *)self firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)self indexGreaterThanIndex:i])
    {
      if (i <= maximum)
      {
        [(NSIndexSet *)v5 addIndex:i];
      }
    }
  }

  return v5;
}

@end
@interface NSIndexSet
- (NSIndexSet)indexSetWithMaximum:(int64_t)a3;
- (NSIndexSet)indexSetWithOffset:(int64_t)a3;
- (int64_t)indexAtIndex:(int64_t)a3;
- (int64_t)locationOfIndex:(int64_t)a3;
@end

@implementation NSIndexSet

- (int64_t)locationOfIndex:(int64_t)a3
{
  v5 = [(NSIndexSet *)self firstIndex];
  v6 = 0;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    if (v5 != a3)
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

      while (v8 != a3);
    }
  }

  return v6;
}

- (int64_t)indexAtIndex:(int64_t)a3
{
  v5 = [(NSIndexSet *)self firstIndex];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && a3)
  {
    v6 = a3 - 1;
    do
    {
      v7 = v6;
      v5 = [(NSIndexSet *)self indexGreaterThanIndex:v5];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return v5;
}

- (NSIndexSet)indexSetWithOffset:(int64_t)a3
{
  v5 = +[NSMutableIndexSet indexSet];
  v6 = [(NSIndexSet *)self firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)self indexGreaterThanIndex:i])
    {
      [(NSIndexSet *)v5 addIndex:i + a3];
    }
  }

  return v5;
}

- (NSIndexSet)indexSetWithMaximum:(int64_t)a3
{
  v5 = +[NSMutableIndexSet indexSet];
  v6 = [(NSIndexSet *)self firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)self indexGreaterThanIndex:i])
    {
      if (i <= a3)
      {
        [(NSIndexSet *)v5 addIndex:i];
      }
    }
  }

  return v5;
}

@end
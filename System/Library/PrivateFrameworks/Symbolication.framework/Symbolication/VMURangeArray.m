@interface VMURangeArray
- (BOOL)containsRange:(_VMURange)a3;
- (BOOL)intersectsRange:(_VMURange)a3;
- (VMURangeArray)init;
- (VMURangeArray)initWithRanges:(const _VMURange *)a3 count:(unsigned int)a4;
- (_VMURange)largestRange;
- (_VMURange)range;
- (_VMURange)rangeAtIndex:(unsigned int)a3;
- (_VMURange)rangeForLocation:(unint64_t)a3;
- (_VMURange)subrangeNotExcludedBySelfForRange:(_VMURange)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)indexForLocation:(unint64_t)a3;
- (unint64_t)sumLengths;
- (void)addRange:(_VMURange)a3;
- (void)addRanges:(id)a3;
- (void)dealloc;
- (void)setCapacity:(unsigned int)a3;
- (void)sort;
@end

@implementation VMURangeArray

- (VMURangeArray)init
{
  v5.receiver = self;
  v5.super_class = VMURangeArray;
  v2 = [(VMURangeArray *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_max = 8;
    v2->_count = 0;
    v2->_ranges = malloc_type_malloc(0x80uLL, 0x1000040451B5BE8uLL);
    v3->_sorted = 1;
  }

  return v3;
}

- (VMURangeArray)initWithRanges:(const _VMURange *)a3 count:(unsigned int)a4
{
  v11.receiver = self;
  v11.super_class = VMURangeArray;
  v6 = [(VMURangeArray *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (a4 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = a4;
    }

    v6->_max = v8;
    v6->_count = a4;
    v9 = malloc_type_malloc(16 * v8, 0x1000040451B5BE8uLL);
    v7->_ranges = v9;
    memmove(v9, a3, 16 * a4);
    v7->_sorted = 0;
  }

  return v7;
}

- (void)dealloc
{
  ranges = self->_ranges;
  if (ranges)
  {
    free(ranges);
  }

  v4.receiver = self;
  v4.super_class = VMURangeArray;
  [(VMURangeArray *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[VMURangeArray allocWithZone:?]count:"initWithRanges:count:", self->_ranges, self->_count];
  if (result)
  {
    *(result + 28) = self->_sorted;
  }

  return result;
}

- (void)setCapacity:(unsigned int)a3
{
  if (self->_max < a3)
  {
    self->_max = a3;
    self->_ranges = malloc_type_realloc(self->_ranges, 16 * a3, 0x1000040451B5BE8uLL);
  }
}

- (void)sort
{
  if (!self->_sorted)
  {
    mergesort(self->_ranges, self->_count, 0x10uLL, compareRange);
    self->_sorted = 1;
  }
}

- (void)addRange:(_VMURange)a3
{
  length = a3.length;
  location = a3.location;
  if (self->_sorted)
  {
    count = self->_count;
    if (count)
    {
      v6 = &self->_ranges[count - 1];
      if (v6->length + v6->location > a3.location)
      {
        self->_sorted = 0;
      }
    }
  }

  v7 = self;
  v8 = v7;
  v9 = v7->_count;
  if (v9 >= v7->_max)
  {
    v11 = (3 * v9 + 3) >> 1;
    v7->_max = v11;
    v13 = v7;
    ranges = malloc_type_realloc(v7->_ranges, 16 * v11, 0x1000040451B5BE8uLL);
    v8 = v13;
    v13->_ranges = ranges;
    v9 = v13->_count;
  }

  else
  {
    ranges = v7->_ranges;
  }

  v8->_count = v9 + 1;
  p_location = &ranges[v9].location;
  *p_location = location;
  p_location[1] = length;
}

- (void)addRanges:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 2);
    if (v3)
    {
      v5 = (*(a3 + 2) + 8);
      do
      {
        [(VMURangeArray *)self addRange:*(v5 - 1), *v5];
        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }
}

- (_VMURange)rangeAtIndex:(unsigned int)a3
{
  if (self->_count <= a3)
  {
    location = 0;
    length = 0;
  }

  else
  {
    v3 = &self->_ranges[a3];
    location = v3->location;
    length = v3->length;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)indexForLocation:(unint64_t)a3
{
  sorted = self->_sorted;
  result = self->_count;
  if (!sorted)
  {
    for (i = result; i * 16; --i)
    {
      --result;
      v11 = &self->_ranges[i];
      if (a3 - v11[-1].location < v11[-1].length)
      {
        return result;
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!result)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  ranges = self->_ranges;
  while (1)
  {
    v8 = v6 + (result >> 1);
    v9 = &ranges[v8];
    if (a3 - v9->location < v9->length)
    {
      break;
    }

    if (a3 < v9->location)
    {
      result >>= 1;
    }

    else
    {
      v6 = v8 + 1;
      result += ~(result >> 1);
    }

    if (!result)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6 + (result >> 1);
}

- (_VMURange)rangeForLocation:(unint64_t)a3
{
  v4 = [(VMURangeArray *)self indexForLocation:a3];

  v5 = [(VMURangeArray *)self rangeAtIndex:v4];
  result.length = v6;
  result.location = v5;
  return result;
}

- (BOOL)containsRange:(_VMURange)a3
{
  length = a3.length;
  location = a3.location;
  count = self->_count;
  if (self->_sorted)
  {
    if (count)
    {
      v7 = 0;
      do
      {
        v8 = v7 + (count >> 1);
        v9 = &self->_ranges[v8];
        v10 = v9->location;
        v11 = VMURangeContainsRange(v9->location, v9->length, location, length);
        if (v11)
        {
          break;
        }

        if (location < v10)
        {
          count >>= 1;
        }

        else
        {
          v7 = v8 + 1;
          count += ~(count >> 1);
        }
      }

      while (count);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = 16 * count;
    do
    {
      v13 = v12 - 16;
      v11 = v12 != 0;
      if (!v12)
      {
        break;
      }

      v14 = VMURangeContainsRange(*(&self->_ranges[-1].location + v12), *(self->_ranges + v12 - 8), location, length);
      v12 = v13;
    }

    while (!v14);
  }

  return v11;
}

- (BOOL)intersectsRange:(_VMURange)a3
{
  length = a3.length;
  location = a3.location;
  count = self->_count;
  if (self->_sorted)
  {
    if (count)
    {
      v7 = 0;
      do
      {
        v8 = v7 + (count >> 1);
        v9 = &self->_ranges[v8];
        v10 = v9->location;
        v11 = VMURangeIntersectsRange(v9->location, v9->length, location, length);
        if (v11)
        {
          break;
        }

        if (location < v10)
        {
          count >>= 1;
        }

        else
        {
          v7 = v8 + 1;
          count += ~(count >> 1);
        }
      }

      while (count);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = 16 * count;
    do
    {
      v13 = v12 - 16;
      v11 = v12 != 0;
      if (!v12)
      {
        break;
      }

      v14 = VMURangeIntersectsRange(*(&self->_ranges[-1].location + v12), *(self->_ranges + v12 - 8), location, length);
      v12 = v13;
    }

    while (!v14);
  }

  return v11;
}

- (_VMURange)subrangeNotExcludedBySelfForRange:(_VMURange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.length)
  {
    count = self->_count;
    if (count)
    {
      v7 = count;
      while (1)
      {
        v8 = VMUIntersectionRange(location, length, self->_ranges[v7 - 1].location, self->_ranges[v7 - 1].length);
        if (v8 == location && length == v9)
        {
          break;
        }

        if (v9)
        {
          if (v8 == location)
          {
            location += v9;
            length -= v9;
          }

          else
          {
            length = v8 - location;
          }
        }

        if (!(--v7 * 16))
        {
          goto LABEL_15;
        }
      }

      location = 0;
      length = 0;
    }
  }

LABEL_15:
  v11 = location;
  v12 = length;
  result.length = v12;
  result.location = v11;
  return result;
}

- (_VMURange)range
{
  count = self->_count;
  if (self->_sorted)
  {
    if (count)
    {
      ranges = self->_ranges;
      location = ranges->location;
      v5 = ranges[(count - 1)].length + ranges[(count - 1)].location;
      goto LABEL_13;
    }

LABEL_12:
    v5 = 0;
    location = -1;
    goto LABEL_13;
  }

  if (!count)
  {
    goto LABEL_12;
  }

  v5 = 0;
  p_length = &self->_ranges->length;
  location = -1;
  do
  {
    v7 = *(p_length - 1);
    if (v7 < location)
    {
      location = *(p_length - 1);
    }

    if (*p_length + v7 > v5)
    {
      v5 = *p_length + v7;
    }

    p_length += 2;
    --count;
  }

  while (count);
LABEL_13:
  v8 = v5 - location;
  result.length = v8;
  result.location = location;
  return result;
}

- (_VMURange)largestRange
{
  count = self->_count;
  if (count)
  {
    v4 = 0;
    v5 = 0;
    p_length = &self->_ranges[count - 1].length;
    v7 = p_length;
    do
    {
      v9 = *v7;
      v7 -= 2;
      v8 = v9;
      if (v9 >= v5)
      {
        v4 = *(p_length - 1);
        v5 = v8;
      }

      p_length = v7;
      --count;
    }

    while (count);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  result.length = v5;
  result.location = v4;
  return result;
}

- (unint64_t)sumLengths
{
  count = self->_count;
  if (!count)
  {
    return 0;
  }

  result = 0;
  p_length = &self->_ranges->length;
  do
  {
    v6 = *p_length;
    p_length += 2;
    result += v6;
    --count;
  }

  while (count);
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  if (self->_sorted)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@"_sorted?  %s\n", v5];
  if (self->_count)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      [v4 appendFormat:@"[%#qx to %#qx] (length: %qd)\n", self->_ranges[v6].location, self->_ranges[v6].length + self->_ranges[v6].location, self->_ranges[v6].length];
      ++v7;
      ++v6;
    }

    while (v7 < self->_count);
  }

  return v4;
}

@end
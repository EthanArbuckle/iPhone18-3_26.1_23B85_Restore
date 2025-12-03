@interface FloatArray
- (BOOL)isEqualToFloatArray:(id)array tolerance:(float)tolerance;
- (FloatArray)initWithArray:(id)array;
- (FloatArray)initWithCount:(unint64_t)count;
- (FloatArray)initWithData:(id)data;
- (FloatArray)initWithFloat:(float)float repeatCount:(unint64_t)count;
- (FloatArray)initWithFloatArray:(id)array;
- (FloatArray)initWithFloats:(const float *)floats count:(unint64_t)count;
- (FloatArray)initWithZeros:(unint64_t)zeros;
- (float)floatAtIndex:(unint64_t)index;
- (float)maximumDifferenceWithFloatArray:(id)array;
- (float)mean;
- (id)addingConstant:(float)constant;
- (id)asArray;
- (id)asData;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)subtracting:(id)subtracting;
- (unint64_t)argMinimum;
- (void)dealloc;
@end

@implementation FloatArray

- (FloatArray)initWithCount:(unint64_t)count
{
  v8.receiver = self;
  v8.super_class = FloatArray;
  v4 = [(FloatArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = count;
    v4->_buffer = malloc_type_malloc(4 * count, 0x100004052888210uLL);
    v6 = v5;
  }

  return v5;
}

- (FloatArray)initWithZeros:(unint64_t)zeros
{
  v8.receiver = self;
  v8.super_class = FloatArray;
  v4 = [(FloatArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = zeros;
    v4->_buffer = malloc_type_calloc(zeros, 4uLL, 0x100004052888210uLL);
    v6 = v5;
  }

  return v5;
}

- (FloatArray)initWithFloat:(float)float repeatCount:(unint64_t)count
{
  __A = float;
  v5 = [(FloatArray *)self initWithCount:?];
  v6 = v5;
  if (v5)
  {
    vDSP_vfill(&__A, v5->_buffer, 1, count);
  }

  return v6;
}

- (FloatArray)initWithFloatArray:(id)array
{
  arrayCopy = array;
  arrayCopy2 = array;
  floats = [arrayCopy2 floats];
  v8 = [arrayCopy2 count];

  return [(FloatArray *)self initWithFloats:floats count:v8];
}

- (FloatArray)initWithFloats:(const float *)floats count:(unint64_t)count
{
  v6 = [(FloatArray *)self initWithCount:count];
  v7 = v6;
  if (v6)
  {
    memcpy(v6->_buffer, floats, 4 * count);
  }

  return v7;
}

- (void)dealloc
{
  free(self->_buffer);
  v3.receiver = self;
  v3.super_class = FloatArray;
  [(FloatArray *)&v3 dealloc];
}

- (float)floatAtIndex:(unint64_t)index
{
  if (self->_count <= index)
  {
    [FloatArray floatAtIndex:];
  }

  return self->_buffer[index];
}

- (BOOL)isEqualToFloatArray:(id)array tolerance:(float)tolerance
{
  arrayCopy = array;
  v7 = [(FloatArray *)self count];
  if (v7 == [arrayCopy count])
  {
    [(FloatArray *)self maximumDifferenceWithFloatArray:arrayCopy];
    v9 = v8 <= tolerance;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (float)maximumDifferenceWithFloatArray:(id)array
{
  arrayCopy = array;
  v5 = [(FloatArray *)self count];
  v6 = [arrayCopy count];
  if (v5 >= v6)
  {
    v5 = v6;
  }

  floats = [(FloatArray *)self floats];
  floats2 = [arrayCopy floats];
  if (v5 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = &floats[v5];
    v10 = 0.0;
    do
    {
      v11 = *floats++;
      v12 = v11;
      v13 = *floats2++;
      v14 = v12 - v13;
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      if (v10 < v14)
      {
        v10 = v14;
      }
    }

    while (floats < v9);
  }

  return v10;
}

- (float)mean
{
  __C = 0.0;
  vDSP_meanv([(FloatArray *)self floats], 1, &__C, [(FloatArray *)self count]);
  return __C;
}

- (unint64_t)argMinimum
{
  __C = 0.0;
  v3 = 0;
  vDSP_minvi([(FloatArray *)self floats], 1, &__C, &v3, [(FloatArray *)self count]);
  return v3;
}

- (id)addingConstant:(float)constant
{
  constantCopy = constant;
  v4 = [[MutableFloatArray alloc] initWithCount:[(FloatArray *)self count]];
  MEMORY[0x22AA502D0]([(FloatArray *)self floats], 1, &constantCopy, [(MutableFloatArray *)v4 mutableFloats], 1, [(FloatArray *)self count]);

  return v4;
}

- (id)subtracting:(id)subtracting
{
  subtractingCopy = subtracting;
  if (self->_count != subtractingCopy[2])
  {
    [FloatArray subtracting:];
  }

  v5 = subtractingCopy;
  v6 = [[MutableFloatArray alloc] initWithCount:self->_count];
  MEMORY[0x22AA502E0]([v5 floats], 1, -[FloatArray floats](self, "floats"), 1, -[MutableFloatArray mutableFloats](v6, "mutableFloats"), 1, -[FloatArray count](self, "count"));

  return v6;
}

- (FloatArray)initWithArray:(id)array
{
  arrayCopy = array;
  v5 = -[FloatArray initWithCount:](self, "initWithCount:", [arrayCopy count]);
  if (v5 && [arrayCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [arrayCopy objectAtIndexedSubscript:v6];
      [v7 floatValue];
      v5->_buffer[v6] = v8;

      ++v6;
    }

    while (v6 < [arrayCopy count]);
  }

  return v5;
}

- (id)asArray
{
  v3 = objc_opt_new();
  floats = [(FloatArray *)self floats];
  if (self->_count)
  {
    v6 = floats;
    v7 = 0;
    do
    {
      *&v5 = v6[v7];
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
      [v3 addObject:v8];

      ++v7;
    }

    while (v7 < self->_count);
  }

  v9 = [v3 copy];

  return v9;
}

- (FloatArray)initWithData:(id)data
{
  dataCopy = data;
  if (([dataCopy length] & 3) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = -[FloatArray initWithFloats:count:](self, "initWithFloats:count:", [dataCopy bytes], objc_msgSend(dataCopy, "length") >> 2);
    selfCopy = self;
  }

  return selfCopy;
}

- (id)asData
{
  v3 = MEMORY[0x277CBEA90];
  floats = [(FloatArray *)self floats];
  v5 = 4 * [(FloatArray *)self count];

  return [v3 dataWithBytes:floats length:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MutableFloatArray alloc];

  return [(FloatArray *)v4 initWithFloatArray:self];
}

@end
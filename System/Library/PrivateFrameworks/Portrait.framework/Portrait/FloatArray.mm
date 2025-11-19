@interface FloatArray
- (BOOL)isEqualToFloatArray:(id)a3 tolerance:(float)a4;
- (FloatArray)initWithArray:(id)a3;
- (FloatArray)initWithCount:(unint64_t)a3;
- (FloatArray)initWithData:(id)a3;
- (FloatArray)initWithFloat:(float)a3 repeatCount:(unint64_t)a4;
- (FloatArray)initWithFloatArray:(id)a3;
- (FloatArray)initWithFloats:(const float *)a3 count:(unint64_t)a4;
- (FloatArray)initWithZeros:(unint64_t)a3;
- (float)floatAtIndex:(unint64_t)a3;
- (float)maximumDifferenceWithFloatArray:(id)a3;
- (float)mean;
- (id)addingConstant:(float)a3;
- (id)asArray;
- (id)asData;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)subtracting:(id)a3;
- (unint64_t)argMinimum;
- (void)dealloc;
@end

@implementation FloatArray

- (FloatArray)initWithCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = FloatArray;
  v4 = [(FloatArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = a3;
    v4->_buffer = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    v6 = v5;
  }

  return v5;
}

- (FloatArray)initWithZeros:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = FloatArray;
  v4 = [(FloatArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = a3;
    v4->_buffer = malloc_type_calloc(a3, 4uLL, 0x100004052888210uLL);
    v6 = v5;
  }

  return v5;
}

- (FloatArray)initWithFloat:(float)a3 repeatCount:(unint64_t)a4
{
  __A = a3;
  v5 = [(FloatArray *)self initWithCount:?];
  v6 = v5;
  if (v5)
  {
    vDSP_vfill(&__A, v5->_buffer, 1, a4);
  }

  return v6;
}

- (FloatArray)initWithFloatArray:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 floats];
  v8 = [v6 count];

  return [(FloatArray *)self initWithFloats:v7 count:v8];
}

- (FloatArray)initWithFloats:(const float *)a3 count:(unint64_t)a4
{
  v6 = [(FloatArray *)self initWithCount:a4];
  v7 = v6;
  if (v6)
  {
    memcpy(v6->_buffer, a3, 4 * a4);
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

- (float)floatAtIndex:(unint64_t)a3
{
  if (self->_count <= a3)
  {
    [FloatArray floatAtIndex:];
  }

  return self->_buffer[a3];
}

- (BOOL)isEqualToFloatArray:(id)a3 tolerance:(float)a4
{
  v6 = a3;
  v7 = [(FloatArray *)self count];
  if (v7 == [v6 count])
  {
    [(FloatArray *)self maximumDifferenceWithFloatArray:v6];
    v9 = v8 <= a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (float)maximumDifferenceWithFloatArray:(id)a3
{
  v4 = a3;
  v5 = [(FloatArray *)self count];
  v6 = [v4 count];
  if (v5 >= v6)
  {
    v5 = v6;
  }

  v7 = [(FloatArray *)self floats];
  v8 = [v4 floats];
  if (v5 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = &v7[v5];
    v10 = 0.0;
    do
    {
      v11 = *v7++;
      v12 = v11;
      v13 = *v8++;
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

    while (v7 < v9);
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

- (id)addingConstant:(float)a3
{
  v6 = a3;
  v4 = [[MutableFloatArray alloc] initWithCount:[(FloatArray *)self count]];
  MEMORY[0x22AA502D0]([(FloatArray *)self floats], 1, &v6, [(MutableFloatArray *)v4 mutableFloats], 1, [(FloatArray *)self count]);

  return v4;
}

- (id)subtracting:(id)a3
{
  v4 = a3;
  if (self->_count != v4[2])
  {
    [FloatArray subtracting:];
  }

  v5 = v4;
  v6 = [[MutableFloatArray alloc] initWithCount:self->_count];
  MEMORY[0x22AA502E0]([v5 floats], 1, -[FloatArray floats](self, "floats"), 1, -[MutableFloatArray mutableFloats](v6, "mutableFloats"), 1, -[FloatArray count](self, "count"));

  return v6;
}

- (FloatArray)initWithArray:(id)a3
{
  v4 = a3;
  v5 = -[FloatArray initWithCount:](self, "initWithCount:", [v4 count]);
  if (v5 && [v4 count])
  {
    v6 = 0;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      [v7 floatValue];
      v5->_buffer[v6] = v8;

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  return v5;
}

- (id)asArray
{
  v3 = objc_opt_new();
  v4 = [(FloatArray *)self floats];
  if (self->_count)
  {
    v6 = v4;
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

- (FloatArray)initWithData:(id)a3
{
  v4 = a3;
  if (([v4 length] & 3) != 0)
  {
    v5 = 0;
  }

  else
  {
    self = -[FloatArray initWithFloats:count:](self, "initWithFloats:count:", [v4 bytes], objc_msgSend(v4, "length") >> 2);
    v5 = self;
  }

  return v5;
}

- (id)asData
{
  v3 = MEMORY[0x277CBEA90];
  v4 = [(FloatArray *)self floats];
  v5 = 4 * [(FloatArray *)self count];

  return [v3 dataWithBytes:v4 length:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MutableFloatArray alloc];

  return [(FloatArray *)v4 initWithFloatArray:self];
}

@end
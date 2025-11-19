@interface _IntArray2D
+ (id)arrayWithISize:(unint64_t)a3 jSize:(unint64_t)a4;
- (_IntArray2D)initWithISize:(unint64_t)a3 jSize:(unint64_t)a4;
- (id)description;
- (int64_t):(unint64_t)a3 :(unint64_t)a4 outOfBoundsReturnValue:(int64_t)a5;
- (void)assertBoundsForIIndex:(unint64_t)a3 jIndex:(unint64_t)a4;
- (void)dealloc;
@end

@implementation _IntArray2D

+ (id)arrayWithISize:(unint64_t)a3 jSize:(unint64_t)a4
{
  v4 = [[_IntArray2D alloc] initWithISize:a3 jSize:a4];

  return v4;
}

- (void)dealloc
{
  free(self->_arrayData);
  v3.receiver = self;
  v3.super_class = _IntArray2D;
  [(_IntArray2D *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:3 * self->_iSize + 3 + (3 * self->_iSize + 3) * self->_jSize];
  jSize = self->_jSize;
  if (jSize)
  {
    if (self->_iSize + 1 <= jSize + 1)
    {
      v5 = jSize + 1;
    }

    else
    {
      v5 = self->_iSize + 1;
    }

    v6 = 0;
    v7 = (log10(v5) + 1.0);
    do
    {
      if (self->_iSize)
      {
        v8 = 0;
        do
        {
          [v3 appendFormat:@"%0*ld ", v7, -[_IntArray2D ::](self, "::", v8++, v6)];
        }

        while (v8 < self->_iSize);
      }

      [v3 appendString:@"\n"];
      ++v6;
    }

    while (v6 < self->_jSize);
  }

  return v3;
}

- (_IntArray2D)initWithISize:(unint64_t)a3 jSize:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = _IntArray2D;
  v7 = [(_IntArray2D *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_iSize = a3;
    v7->_jSize = a4;
    v9 = malloc_type_calloc(a4 * a3, 8uLL, 0x100004000313F17uLL);
    v8->_arrayData = v9;
    if (!v9)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v8 file:@"_IntArray2D.m" lineNumber:52 description:{@"IntArray2D : Not enough memory to allocate an array with size:%lu x %lu", a3, a4}];
    }
  }

  return v8;
}

- (void)assertBoundsForIIndex:(unint64_t)a3 jIndex:(unint64_t)a4
{
  if (self->_shouldBoundsCheck && ![_IntArray2D inBoundsForIIndex:"inBoundsForIIndex:jIndex:" jIndex:?])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_IntArray2D.m" lineNumber:73 description:{@"IntArray2D : Out of bounds with indices:%lu %lu on array size:%lu %lu", a3, a4, self->_iSize, self->_jSize}];
  }
}

- (int64_t):(unint64_t)a3 :(unint64_t)a4 outOfBoundsReturnValue:(int64_t)a5
{
  if (![_IntArray2D inBoundsForIIndex:"inBoundsForIIndex:jIndex:" jIndex:?])
  {
    return a5;
  }

  return [(_IntArray2D *)self ];
}

@end
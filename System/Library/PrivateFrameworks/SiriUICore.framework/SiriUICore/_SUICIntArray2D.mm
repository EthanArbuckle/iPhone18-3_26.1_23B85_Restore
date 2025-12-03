@interface _SUICIntArray2D
+ (id)arrayWithISize:(unint64_t)size jSize:(unint64_t)jSize;
- (_SUICIntArray2D)initWithISize:(unint64_t)size jSize:(unint64_t)jSize;
- (int64_t):(unint64_t)a3 :(unint64_t)a4 outOfBoundsReturnValue:(int64_t)value;
- (void)dealloc;
@end

@implementation _SUICIntArray2D

+ (id)arrayWithISize:(unint64_t)size jSize:(unint64_t)jSize
{
  v4 = [[_SUICIntArray2D alloc] initWithISize:size jSize:jSize];

  return v4;
}

- (void)dealloc
{
  free(self->_arrayData);
  v3.receiver = self;
  v3.super_class = _SUICIntArray2D;
  [(_SUICIntArray2D *)&v3 dealloc];
}

- (_SUICIntArray2D)initWithISize:(unint64_t)size jSize:(unint64_t)jSize
{
  v9.receiver = self;
  v9.super_class = _SUICIntArray2D;
  v6 = [(_SUICIntArray2D *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_iSize = size;
    v6->_jSize = jSize;
    v6->_arrayData = malloc_type_calloc(jSize * size, 8uLL, 0x100004000313F17uLL);
  }

  return v7;
}

- (int64_t):(unint64_t)a3 :(unint64_t)a4 outOfBoundsReturnValue:(int64_t)value
{
  if (![_SUICIntArray2D inBoundsForIIndex:"inBoundsForIIndex:jIndex:" jIndex:?])
  {
    return value;
  }

  return [(_SUICIntArray2D *)self ];
}

@end
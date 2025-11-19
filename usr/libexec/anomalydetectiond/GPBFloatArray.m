@interface GPBFloatArray
+ (id)array;
+ (id)arrayWithCapacity:(unint64_t)a3;
+ (id)arrayWithValueArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (GPBFloatArray)init;
- (GPBFloatArray)initWithCapacity:(unint64_t)a3;
- (GPBFloatArray)initWithValues:(const float *)a3 count:(unint64_t)a4;
- (float)valueAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addValues:(const float *)a3 count:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateValuesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)exchangeValueAtIndex:(unint64_t)a3 withValueAtIndex:(unint64_t)a4;
- (void)insertValue:(float)a3 atIndex:(unint64_t)a4;
- (void)internalResizeToCapacity:(unint64_t)a3;
- (void)removeAll;
- (void)removeValueAtIndex:(unint64_t)a3;
- (void)replaceValueAtIndex:(unint64_t)a3 withValue:(float)a4;
@end

@implementation GPBFloatArray

+ (id)array
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)arrayWithValueArray:(id)a3
{
  v3 = [[a1 alloc] initWithValueArray:a3];

  return v3;
}

+ (id)arrayWithCapacity:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithCapacity:a3];

  return v3;
}

- (GPBFloatArray)init
{
  v3.receiver = self;
  v3.super_class = GPBFloatArray;
  return [(GPBFloatArray *)&v3 init];
}

- (GPBFloatArray)initWithValues:(const float *)a3 count:(unint64_t)a4
{
  v6 = [(GPBFloatArray *)self init];
  v7 = v6;
  if (v6 && a3 && a4)
  {
    v8 = reallocf(v6->_values, 4 * a4);
    v7->_values = v8;
    if (v8)
    {
      v7->_capacity = a4;
      memcpy(v8, a3, 4 * a4);
      v7->_count = a4;
    }

    else
    {

      [NSException raise:NSMallocException format:@"Failed to allocate %lu bytes", 4 * a4];
    }
  }

  return v7;
}

- (GPBFloatArray)initWithCapacity:(unint64_t)a3
{
  v4 = [(GPBFloatArray *)self initWithValues:0 count:0];
  v5 = v4;
  if (a3 && v4)
  {
    [(GPBFloatArray *)v4 internalResizeToCapacity:a3];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBFloatArray allocWithZone:a3];
  values = self->_values;
  count = self->_count;

  return [(GPBFloatArray *)v4 initWithValues:values count:count];
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_100346984();
  }

  free(self->_values);
  v3.receiver = self;
  v3.super_class = GPBFloatArray;
  [(GPBFloatArray *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (count = self->_count, count == *(a3 + 3)) && memcmp(self->_values, *(a3 + 2), 4 * count) == 0;
  return result;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> { ", objc_opt_class(), self];
  count = self->_count;
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (i)
      {
        v6 = @", %f";
      }

      else
      {
        v6 = @"%f";
      }

      [(NSMutableString *)v3 appendFormat:v6, self->_values[i]];
    }
  }

  [(NSMutableString *)v3 appendFormat:@" }"];
  return v3;
}

- (void)enumerateValuesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v11 = 0;
  count = self->_count;
  if ((a3 & 2) != 0)
  {
    if (count)
    {
      v10 = count - 1;
      do
      {
        if (v10 == -1)
        {
          break;
        }

        (*(a4 + 2))(a4, v10, &v11, self->_values[v10]);
        --v10;
      }

      while (v11 != 1);
    }
  }

  else if (count)
  {
    v7 = 0;
    v8 = count - 1;
    do
    {
      (*(a4 + 2))(a4, v7, &v11, self->_values[v7]);
      if (v11)
      {
        break;
      }
    }

    while (v8 != v7++);
  }
}

- (float)valueAtIndex:(unint64_t)a3
{
  count = self->_count;
  if (count <= a3)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a3, count];
  }

  return self->_values[a3];
}

- (void)internalResizeToCapacity:(unint64_t)a3
{
  v5 = 4 * a3;
  v6 = reallocf(self->_values, 4 * a3);
  self->_values = v6;
  if (!v6)
  {
    self->_count = 0;
    self->_capacity = 0;
    [NSException raise:NSMallocException format:@"Failed to allocate %lu bytes", v5];
  }

  self->_capacity = a3;
}

- (void)addValues:(const float *)a3 count:(unint64_t)a4
{
  if (a3 && a4)
  {
    count = self->_count;
    v8 = count + a4;
    if (count + a4 > self->_capacity)
    {
      [(GPBFloatArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
    }

    self->_count = v8;
    memcpy(&self->_values[count], a3, 4 * a4);
    autocreator = self->_autocreator;
    if (autocreator)
    {

      GPBAutocreatedArrayModified(autocreator, self);
    }
  }
}

- (void)insertValue:(float)a3 atIndex:(unint64_t)a4
{
  count = self->_count;
  v8 = count + 1;
  if (count + 1 <= a4)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a4, count + 1];
    count = self->_count;
    v8 = count + 1;
  }

  if (v8 > self->_capacity)
  {
    [(GPBFloatArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
  }

  self->_count = v8;
  if (count != a4)
  {
    memmove(&self->_values[a4 + 1], &self->_values[a4], 4 * (count - a4));
  }

  self->_values[a4] = a3;
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedArrayModified(autocreator, self);
  }
}

- (void)replaceValueAtIndex:(unint64_t)a3 withValue:(float)a4
{
  count = self->_count;
  if (count <= a3)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a3, count];
  }

  self->_values[a3] = a4;
}

- (void)removeValueAtIndex:(unint64_t)a3
{
  count = self->_count;
  if (count <= a3)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a3, count];
    count = self->_count;
  }

  v6 = count - 1;
  if (count - 1 != a3)
  {
    memmove(&self->_values[a3], &self->_values[a3 + 1], 4 * (count - 1 - a3));
  }

  self->_count = v6;
  if (count + 31 < self->_capacity)
  {

    [(GPBFloatArray *)self internalResizeToCapacity:(v6 & 0xFFFFFFFFFFFFFFF0) + 16];
  }
}

- (void)removeAll
{
  self->_count = 0;
  if (self->_capacity >= 0x21)
  {
    [(GPBFloatArray *)self internalResizeToCapacity:16];
  }
}

- (void)exchangeValueAtIndex:(unint64_t)a3 withValueAtIndex:(unint64_t)a4
{
  count = self->_count;
  if (count <= a3)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a3, count];
    count = self->_count;
  }

  if (count <= a4)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a4, count];
  }

  values = self->_values;
  v9 = values[a3];
  values[a3] = values[a4];
  values[a4] = v9;
}

@end
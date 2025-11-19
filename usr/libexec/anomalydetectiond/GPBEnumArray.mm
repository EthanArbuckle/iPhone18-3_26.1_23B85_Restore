@interface GPBEnumArray
+ (id)array;
+ (id)arrayWithValidationFunction:(void *)a3;
+ (id)arrayWithValidationFunction:(void *)a3 capacity:(unint64_t)a4;
+ (id)arrayWithValueArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (GPBEnumArray)initWithValidationFunction:(void *)a3;
- (GPBEnumArray)initWithValidationFunction:(void *)a3 capacity:(unint64_t)a4;
- (GPBEnumArray)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 count:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)rawValueAtIndex:(unint64_t)a3;
- (int)valueAtIndex:(unint64_t)a3;
- (void)addRawValues:(const int *)a3 count:(unint64_t)a4;
- (void)addValues:(const int *)a3 count:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateRawValuesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateValuesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)exchangeValueAtIndex:(unint64_t)a3 withValueAtIndex:(unint64_t)a4;
- (void)insertRawValue:(int)a3 atIndex:(unint64_t)a4;
- (void)internalResizeToCapacity:(unint64_t)a3;
- (void)removeAll;
- (void)removeValueAtIndex:(unint64_t)a3;
- (void)replaceValueAtIndex:(unint64_t)a3 withRawValue:(int)a4;
@end

@implementation GPBEnumArray

+ (id)array
{
  v2 = [[a1 alloc] initWithValidationFunction:0];

  return v2;
}

+ (id)arrayWithValidationFunction:(void *)a3
{
  v3 = [[a1 alloc] initWithValidationFunction:a3];

  return v3;
}

+ (id)arrayWithValueArray:(id)a3
{
  v3 = [[a1 alloc] initWithValueArray:a3];

  return v3;
}

+ (id)arrayWithValidationFunction:(void *)a3 capacity:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithValidationFunction:a3 capacity:a4];

  return v4;
}

- (GPBEnumArray)initWithValidationFunction:(void *)a3
{
  v6.receiver = self;
  v6.super_class = GPBEnumArray;
  result = [(GPBEnumArray *)&v6 init];
  if (result)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = sub_1003457D8;
    }

    result->_validationFunc = v5;
  }

  return result;
}

- (GPBEnumArray)initWithValidationFunction:(void *)a3 rawValues:(const int *)a4 count:(unint64_t)a5
{
  v7 = [(GPBEnumArray *)self initWithValidationFunction:a3];
  v8 = v7;
  if (v7 && a4 && a5)
  {
    v9 = reallocf(v7->_values, 4 * a5);
    v8->_values = v9;
    if (v9)
    {
      v8->_capacity = a5;
      memcpy(v9, a4, 4 * a5);
      v8->_count = a5;
    }

    else
    {

      [NSException raise:NSMallocException format:@"Failed to allocate %lu bytes", 4 * a5];
    }
  }

  return v8;
}

- (GPBEnumArray)initWithValidationFunction:(void *)a3 capacity:(unint64_t)a4
{
  v5 = [(GPBEnumArray *)self initWithValidationFunction:a3];
  v6 = v5;
  if (a4 && v5)
  {
    [(GPBEnumArray *)v5 internalResizeToCapacity:a4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GPBEnumArray allocWithZone:a3];
  validationFunc = self->_validationFunc;
  values = self->_values;
  count = self->_count;

  return [(GPBEnumArray *)v4 initWithValidationFunction:validationFunc rawValues:values count:count];
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_100346AA4();
  }

  free(self->_values);
  v3.receiver = self;
  v3.super_class = GPBEnumArray;
  [(GPBEnumArray *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (count = self->_count, count == *(a3 + 4)) && memcmp(self->_values, *(a3 + 3), 4 * count) == 0;
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
        v6 = @", %d";
      }

      else
      {
        v6 = @"%d";
      }

      [(NSMutableString *)v3 appendFormat:v6, self->_values[i]];
    }
  }

  [(NSMutableString *)v3 appendFormat:@" }"];
  return v3;
}

- (void)enumerateRawValuesWithOptions:(unint64_t)a3 usingBlock:(id)a4
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

        (*(a4 + 2))(a4, self->_values[v10], v10, &v11);
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
      (*(a4 + 2))(a4, self->_values[v7], v7, &v11);
      if (v11)
      {
        break;
      }
    }

    while (v8 != v7++);
  }
}

- (int)valueAtIndex:(unint64_t)a3
{
  count = self->_count;
  if (count <= a3)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a3, count];
  }

  v6 = self->_values[a3];
  if ((self->_validationFunc)(v6))
  {
    return v6;
  }

  else
  {
    return -72499473;
  }
}

- (int)rawValueAtIndex:(unint64_t)a3
{
  count = self->_count;
  if (count <= a3)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", a3, count];
  }

  return self->_values[a3];
}

- (void)enumerateValuesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v20 = 0;
  validationFunc = self->_validationFunc;
  if ((a3 & 2) != 0)
  {
    count = self->_count;
    if (count)
    {
      v15 = count - 1;
      if ((count - 1) >= 0)
      {
        values = self->_values;
        v17 = &values[count - 2];
        do
        {
          v18 = *(v17 + 4);
          if (validationFunc(v18, a2))
          {
            v19 = v18;
          }

          else
          {
            v19 = 4222467823;
          }

          (*(a4 + 2))(a4, v19, v15, &v20);
          if (v20)
          {
            break;
          }

          --v15;
          v13 = v17 >= values;
          v17 -= 4;
        }

        while (v13);
      }
    }
  }

  else
  {
    v6 = self->_count;
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = self->_values;
      v9 = &v8[v6];
      v10 = v8 + 1;
      do
      {
        v11 = *(v10 - 1);
        if (validationFunc(v11, a2))
        {
          v12 = v11;
        }

        else
        {
          v12 = 4222467823;
        }

        (*(a4 + 2))(a4, v12, v7, &v20);
        if (v20)
        {
          break;
        }

        ++v7;
        v13 = v10++ >= v9;
      }

      while (!v13);
    }
  }
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

- (void)addRawValues:(const int *)a3 count:(unint64_t)a4
{
  if (a3 && a4)
  {
    count = self->_count;
    v8 = count + a4;
    if (count + a4 > self->_capacity)
    {
      [(GPBEnumArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
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

- (void)insertRawValue:(int)a3 atIndex:(unint64_t)a4
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
    [(GPBEnumArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
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

- (void)replaceValueAtIndex:(unint64_t)a3 withRawValue:(int)a4
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

    [(GPBEnumArray *)self internalResizeToCapacity:(v6 & 0xFFFFFFFFFFFFFFF0) + 16];
  }
}

- (void)removeAll
{
  self->_count = 0;
  if (self->_capacity >= 0x21)
  {
    [(GPBEnumArray *)self internalResizeToCapacity:16];
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

- (void)addValues:(const int *)a3 count:(unint64_t)a4
{
  if (a3 && a4)
  {
    v7 = 0;
    validationFunc = self->_validationFunc;
    do
    {
      if ((validationFunc(a3[v7], a2) & 1) == 0)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@: Attempt to set an unknown enum value (%d)", objc_opt_class(), a3[v7]];
      }

      ++v7;
    }

    while (a4 != v7);
    count = self->_count;
    v10 = count + a4;
    if (count + a4 > self->_capacity)
    {
      [(GPBEnumArray *)self internalResizeToCapacity:(v10 & 0xFFFFFFFFFFFFFFF0) + 16];
    }

    self->_count = v10;
    memcpy(&self->_values[count], a3, 4 * a4);
    autocreator = self->_autocreator;
    if (autocreator)
    {

      GPBAutocreatedArrayModified(autocreator, self);
    }
  }
}

@end
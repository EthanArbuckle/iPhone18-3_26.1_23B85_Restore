@interface FxVector
+ (id)vectorWithCIVector:(id)vector;
+ (id)vectorWithString:(id)string;
+ (id)vectorWithValues:(const double *)values count:(unint64_t)count;
+ (id)vectorWithX:(double)x;
+ (id)vectorWithX:(double)x Y:(double)y;
+ (id)vectorWithX:(double)x Y:(double)y Z:(double)z;
+ (id)vectorWithX:(double)x Y:(double)y Z:(double)z W:(double)w;
- (FxVector)initWithCIVector:(id)vector;
- (FxVector)initWithCoder:(id)coder;
- (FxVector)initWithString:(id)string;
- (FxVector)initWithValues:(const double *)values count:(unint64_t)count;
- (FxVector)initWithX:(double)x Y:(double)y;
- (FxVector)initWithX:(double)x Y:(double)y Z:(double)z;
- (FxVector)initWithX:(double)x Y:(double)y Z:(double)z W:(double)w;
- (double)W;
- (double)X;
- (double)Y;
- (double)Z;
- (double)valueAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FxVector

+ (id)vectorWithValues:(const double *)values count:(unint64_t)count
{
  v4 = [[self alloc] initWithValues:values count:count];

  return v4;
}

- (FxVector)initWithCIVector:(id)vector
{
  v5 = [vector count];
  v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  if (v6)
  {
    v7 = v6;
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        [vector valueAtIndex:i];
        v7[i] = v9;
      }
    }

    v10 = [(FxVector *)self initWithValues:v7 count:v5];
    free(v7);
    return v10;
  }

  else
  {

    return 0;
  }
}

+ (id)vectorWithCIVector:(id)vector
{
  v3 = [objc_alloc(objc_opt_class()) initWithCIVector:vector];

  return v3;
}

+ (id)vectorWithX:(double)x
{
  v3 = [[self alloc] initWithX:x];

  return v3;
}

+ (id)vectorWithX:(double)x Y:(double)y
{
  v4 = [[self alloc] initWithX:x Y:y];

  return v4;
}

+ (id)vectorWithX:(double)x Y:(double)y Z:(double)z
{
  v5 = [[self alloc] initWithX:x Y:y Z:z];

  return v5;
}

+ (id)vectorWithX:(double)x Y:(double)y Z:(double)z W:(double)w
{
  v6 = [[self alloc] initWithX:x Y:y Z:z W:w];

  return v6;
}

+ (id)vectorWithString:(id)string
{
  v3 = [[self alloc] initWithString:string];

  return v3;
}

- (FxVector)initWithX:(double)x Y:(double)y
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = x;
  *&v5[1] = y;
  return [(FxVector *)self initWithValues:v5 count:2];
}

- (FxVector)initWithX:(double)x Y:(double)y Z:(double)z
{
  v6[3] = *MEMORY[0x277D85DE8];
  *v6 = x;
  *&v6[1] = y;
  *&v6[2] = z;
  return [(FxVector *)self initWithValues:v6 count:3];
}

- (FxVector)initWithX:(double)x Y:(double)y Z:(double)z W:(double)w
{
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = x;
  *&v7[1] = y;
  *&v7[2] = z;
  *&v7[3] = w;
  return [(FxVector *)self initWithValues:v7 count:4];
}

- (FxVector)initWithValues:(const double *)values count:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = FxVector;
  v6 = [(FxVector *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_count = count;
    if (count > 4)
    {
      v9 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
      v7->_u.ptr = v9;
      if (v9)
      {
        v10 = 0;
        do
        {
          v7->_u.ptr[v10] = values[v10];
          ++v10;
        }

        while (count != v10);
      }

      else
      {

        return 0;
      }
    }

    else
    {
      if (!count)
      {
        goto LABEL_7;
      }

      v8 = 0;
      do
      {
        v6->_u.vec[v8] = values[v8];
        ++v8;
      }

      while (count != v8);
      if (count != 4)
      {
LABEL_7:
        bzero(&v6->_u.vec[count], 32 - 8 * count);
      }
    }
  }

  return v7;
}

- (FxVector)initWithString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  uTF8String = [string UTF8String];
  if (!uTF8String)
  {

    return [(FxVector *)self init];
  }

  v18 = 0;
  if (*uTF8String == 91)
  {
    v5 = uTF8String + 1;
  }

  else
  {
    v5 = uTF8String;
  }

  v6 = strtod(v5, &v18);
  v7 = v18;
  if (v18 == v5)
  {
    return [(FxVector *)self initWithValues:v19 count:0, v6];
  }

  v8 = v6;
  v9 = 0;
  v10 = 32;
  v11 = v19;
  while (v9 != v10)
  {
    v13 = v11;
LABEL_13:
    v14 = v9 + 1;
    v13[v9] = v8;
    v8 = strtod(v7, &v18);
    ++v9;
    v15 = v18 == v7;
    v7 = v18;
    if (v15)
    {
      goto LABEL_21;
    }
  }

  v12 = malloc_type_malloc(16 * v10, 0x100004000313F17uLL);
  if (v12)
  {
    v13 = v12;
    memcpy(v12, v11, 8 * v10);
    if (v11 != v19)
    {
      free(v11);
    }

    v10 *= 2;
    v7 = v18;
    v11 = v13;
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v9;
LABEL_21:
  v17 = [(FxVector *)self initWithValues:v13 count:v14, v18];
  if (v13 != v19)
  {
    free(v13);
  }

  return v17;
}

- (void)dealloc
{
  if (self->_count >= 5)
  {
    free(self->_u.ptr);
  }

  v3.receiver = self;
  v3.super_class = FxVector;
  [(FxVector *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  count = self->_count;
  v5 = [FxVector allocWithZone:zone];
  v6 = self->_count;
  if (count > 4)
  {
    ptr = self->_u.ptr;
  }

  else
  {
    ptr = &self->_u;
  }

  return [(FxVector *)v5 initWithValues:ptr count:v6];
}

- (FxVector)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  if ([coder containsValueForKey:@"CICount"])
  {
    LODWORD(v5) = [coder decodeIntForKey:@"CICount"];
    if (([coder containsValueForKey:@"FxVector"] & 1) == 0)
    {
      v5 = v5;
      if (v5 >= 0x41)
      {
        v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
        if (!v6)
        {

          return 0;
        }
      }

      else
      {
        v6 = v11;
      }

      if (!v5)
      {
        v5 = 0;
        return [(FxVector *)self initWithValues:v6 count:v5];
      }

LABEL_9:
      for (i = 0; i != v5; ++i)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CI_%ld", i];
        [coder decodeFloatForKey:v8];
        *&v6[8 * i] = v9;
      }

      return [(FxVector *)self initWithValues:v6 count:v5];
    }
  }

  else if (([coder containsValueForKey:@"FxVector"] & 1) == 0)
  {
    v6 = v11;
    v5 = 4;
    goto LABEL_9;
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:LODWORD(self->_count) forKey:@"CICount"];
  if (self->_count >= 5)
  {
    v5 = 0;
    do
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CI_%ld", v5];
      v7 = self->_u.ptr[v5];
      *&v7 = v7;
      [coder encodeFloat:v6 forKey:v7];

      ++v5;
    }

    while (v5 < self->_count);
  }
}

- (double)valueAtIndex:(unint64_t)index
{
  count = self->_count;
  result = 0.0;
  if (count > index)
  {
    p_u = &self->_u;
    if (count > 4)
    {
      v6 = &p_u->ptr[index];
    }

    else
    {
      v6 = &p_u->vec[index];
    }

    return *v6;
  }

  return result;
}

- (double)X
{
  p_u = &self->_u;
  if (self->_count >= 5)
  {
    p_u = p_u->ptr;
  }

  return p_u->vec[0];
}

- (double)Y
{
  if (self->_count > 4)
  {
    v2 = self->_u.ptr + 1;
  }

  else
  {
    v2 = &self->_u.vec[1];
  }

  return *v2;
}

- (double)Z
{
  if (self->_count > 4)
  {
    v2 = self->_u.ptr + 2;
  }

  else
  {
    v2 = &self->_u.vec[2];
  }

  return *v2;
}

- (double)W
{
  if (self->_count > 4)
  {
    v2 = self->_u.ptr + 3;
  }

  else
  {
    v2 = &self->_u.vec[3];
  }

  return *v2;
}

@end
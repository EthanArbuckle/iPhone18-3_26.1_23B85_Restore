@interface UINibCoderValue
+ (id)nibValueForBoolean:(BOOL)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForBytes:(const void *)a3 length:(unint64_t)a4 key:(id)a5 scope:(unsigned int)a6;
+ (id)nibValueForDouble:(double)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForFloat:(float)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForInt16:(unsigned __int16)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForInt32:(unsigned int)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForInt64:(unint64_t)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForInt8:(unsigned __int8)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForInteger:(unint64_t)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueForObjectReference:(int64_t)a3 key:(id)a4 scope:(unsigned int)a5;
+ (id)nibValueRepresentingNilReferenceForKey:(id)a3 scope:(unsigned int)a4;
- (unint64_t)byteLength;
- (void)dealloc;
@end

@implementation UINibCoderValue

+ (id)nibValueForObjectReference:(int64_t)a3 key:(id)a4 scope:(unsigned int)a5
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 10;
  v8->value.integerValue = a3;
  v8->key = [a4 copy];
  v8->scope = a5;

  return v8;
}

+ (id)nibValueForInt8:(unsigned __int8)a3 key:(id)a4 scope:(unsigned int)a5
{
  v7 = a3;
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 0;
  v8->value.integerValue = v7;
  v8->key = [a4 copy];
  v8->scope = a5;

  return v8;
}

+ (id)nibValueForInt16:(unsigned __int16)a3 key:(id)a4 scope:(unsigned int)a5
{
  v7 = a3;
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 1;
  v8->value.integerValue = v7;
  v8->key = [a4 copy];
  v8->scope = a5;

  return v8;
}

+ (id)nibValueForInt32:(unsigned int)a3 key:(id)a4 scope:(unsigned int)a5
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 2;
  v8->value.integerValue = a3;
  v8->key = [a4 copy];
  v8->scope = a5;

  return v8;
}

+ (id)nibValueForInt64:(unint64_t)a3 key:(id)a4 scope:(unsigned int)a5
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 3;
  v8->value.integerValue = a3;
  v8->key = [a4 copy];
  v8->scope = a5;

  return v8;
}

+ (id)nibValueForInteger:(unint64_t)a3 key:(id)a4 scope:(unsigned int)a5
{
  if (a3 <= 0x7F)
  {
    return [a1 nibValueForInt8:a3 key:a4 scope:*&a5];
  }

  if (!(a3 >> 15))
  {
    return [a1 nibValueForInt16:a3 key:a4 scope:*&a5];
  }

  if (a3 >> 31)
  {
    return [a1 nibValueForInt64:? key:? scope:?];
  }

  return [a1 nibValueForInt32:? key:? scope:?];
}

+ (id)nibValueForBoolean:(BOOL)a3 key:(id)a4 scope:(unsigned int)a5
{
  v7 = a3;
  v8 = objc_alloc_init(UINibCoderValue);
  v9 = v8;
  if (v7)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  v8->type = v10;
  v8->value.integerValue = v7;
  v8->key = [a4 copy];
  v9->scope = a5;

  return v9;
}

+ (id)nibValueForDouble:(double)a3 key:(id)a4 scope:(unsigned int)a5
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 7;
  v8->value.doubleValue = a3;
  v8->key = [a4 copy];
  v8->scope = a5;

  return v8;
}

+ (id)nibValueForFloat:(float)a3 key:(id)a4 scope:(unsigned int)a5
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 6;
  v8->value.floatValue = a3;
  v8->key = [a4 copy];
  v8->scope = a5;

  return v8;
}

+ (id)nibValueForBytes:(const void *)a3 length:(unint64_t)a4 key:(id)a5 scope:(unsigned int)a6
{
  v10 = malloc_type_malloc(a4, 0x6016F0A2uLL);
  memcpy(v10, a3, a4);
  v11 = objc_alloc_init(UINibCoderValue);
  v11->type = 8;
  v11->value.integerValue = v10;
  v11->key = [a5 copy];
  v11->length = a4;
  v11->scope = a6;

  return v11;
}

+ (id)nibValueRepresentingNilReferenceForKey:(id)a3 scope:(unsigned int)a4
{
  v6 = objc_alloc_init(UINibCoderValue);
  v6->type = 9;
  v6->key = [a3 copy];
  v6->scope = a4;

  return v6;
}

- (void)dealloc
{
  if (self->type == 8)
  {
    free(self->value.bytesValue);
  }

  v3.receiver = self;
  v3.super_class = UINibCoderValue;
  [(UINibCoderValue *)&v3 dealloc];
}

- (unint64_t)byteLength
{
  type = self->type;
  if (type > 0xA)
  {
    goto LABEL_5;
  }

  result = UIFixedByteLengthForType_table[type];
  if (result == -1)
  {
    return self->length;
  }

  if (result == -2)
  {
LABEL_5:
    [UINibCoderValue byteLength];
  }

  return result;
}

@end
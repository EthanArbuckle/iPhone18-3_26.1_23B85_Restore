@interface UINibCoderValue
+ (id)nibValueForBoolean:(BOOL)boolean key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForBytes:(const void *)bytes length:(unint64_t)length key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForDouble:(double)double key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForFloat:(float)float key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForInt16:(unsigned __int16)int16 key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForInt32:(unsigned int)int32 key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForInt64:(unint64_t)int64 key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForInt8:(unsigned __int8)int8 key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForInteger:(unint64_t)integer key:(id)key scope:(unsigned int)scope;
+ (id)nibValueForObjectReference:(int64_t)reference key:(id)key scope:(unsigned int)scope;
+ (id)nibValueRepresentingNilReferenceForKey:(id)key scope:(unsigned int)scope;
- (unint64_t)byteLength;
- (void)dealloc;
@end

@implementation UINibCoderValue

+ (id)nibValueForObjectReference:(int64_t)reference key:(id)key scope:(unsigned int)scope
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 10;
  v8->value.integerValue = reference;
  v8->key = [key copy];
  v8->scope = scope;

  return v8;
}

+ (id)nibValueForInt8:(unsigned __int8)int8 key:(id)key scope:(unsigned int)scope
{
  int8Copy = int8;
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 0;
  v8->value.integerValue = int8Copy;
  v8->key = [key copy];
  v8->scope = scope;

  return v8;
}

+ (id)nibValueForInt16:(unsigned __int16)int16 key:(id)key scope:(unsigned int)scope
{
  int16Copy = int16;
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 1;
  v8->value.integerValue = int16Copy;
  v8->key = [key copy];
  v8->scope = scope;

  return v8;
}

+ (id)nibValueForInt32:(unsigned int)int32 key:(id)key scope:(unsigned int)scope
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 2;
  v8->value.integerValue = int32;
  v8->key = [key copy];
  v8->scope = scope;

  return v8;
}

+ (id)nibValueForInt64:(unint64_t)int64 key:(id)key scope:(unsigned int)scope
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 3;
  v8->value.integerValue = int64;
  v8->key = [key copy];
  v8->scope = scope;

  return v8;
}

+ (id)nibValueForInteger:(unint64_t)integer key:(id)key scope:(unsigned int)scope
{
  if (integer <= 0x7F)
  {
    return [self nibValueForInt8:integer key:key scope:*&scope];
  }

  if (!(integer >> 15))
  {
    return [self nibValueForInt16:integer key:key scope:*&scope];
  }

  if (integer >> 31)
  {
    return [self nibValueForInt64:? key:? scope:?];
  }

  return [self nibValueForInt32:? key:? scope:?];
}

+ (id)nibValueForBoolean:(BOOL)boolean key:(id)key scope:(unsigned int)scope
{
  booleanCopy = boolean;
  v8 = objc_alloc_init(UINibCoderValue);
  v9 = v8;
  if (booleanCopy)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  v8->type = v10;
  v8->value.integerValue = booleanCopy;
  v8->key = [key copy];
  v9->scope = scope;

  return v9;
}

+ (id)nibValueForDouble:(double)double key:(id)key scope:(unsigned int)scope
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 7;
  v8->value.doubleValue = double;
  v8->key = [key copy];
  v8->scope = scope;

  return v8;
}

+ (id)nibValueForFloat:(float)float key:(id)key scope:(unsigned int)scope
{
  v8 = objc_alloc_init(UINibCoderValue);
  v8->type = 6;
  v8->value.floatValue = float;
  v8->key = [key copy];
  v8->scope = scope;

  return v8;
}

+ (id)nibValueForBytes:(const void *)bytes length:(unint64_t)length key:(id)key scope:(unsigned int)scope
{
  v10 = malloc_type_malloc(length, 0x6016F0A2uLL);
  memcpy(v10, bytes, length);
  v11 = objc_alloc_init(UINibCoderValue);
  v11->type = 8;
  v11->value.integerValue = v10;
  v11->key = [key copy];
  v11->length = length;
  v11->scope = scope;

  return v11;
}

+ (id)nibValueRepresentingNilReferenceForKey:(id)key scope:(unsigned int)scope
{
  v6 = objc_alloc_init(UINibCoderValue);
  v6->type = 9;
  v6->key = [key copy];
  v6->scope = scope;

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
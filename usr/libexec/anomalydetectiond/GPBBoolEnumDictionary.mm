@interface GPBBoolEnumDictionary
- (BOOL)getEnum:(int *)enum forKey:(BOOL)key;
- (BOOL)getRawValue:(int *)value forKey:(BOOL)key;
- (BOOL)isEqual:(id)equal;
- (GPBBoolEnumDictionary)initWithDictionary:(id)dictionary;
- (GPBBoolEnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const BOOL *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addRawEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndEnumsUsingBlock:(id)block;
- (void)enumerateKeysAndRawValuesUsingBlock:(id)block;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)setRawValue:(int)value forKey:(BOOL)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBBoolEnumDictionary

- (GPBBoolEnumDictionary)initWithValidationFunction:(void *)function rawValues:(const int *)values forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v15.receiver = self;
  v15.super_class = GPBBoolEnumDictionary;
  result = [(GPBBoolEnumDictionary *)&v15 init];
  if (result)
  {
    if (function)
    {
      functionCopy = function;
    }

    else
    {
      functionCopy = sub_100321780;
    }

    for (result->_validationFunc = functionCopy; count; --count)
    {
      v13 = *keys++;
      v12 = v13;
      v14 = *values++;
      result->_values[v12] = v14;
      result->_valueSet[v12] = 1;
    }
  }

  return result;
}

- (GPBBoolEnumDictionary)initWithDictionary:(id)dictionary
{
  result = -[GPBBoolEnumDictionary initWithValidationFunction:rawValues:forKeys:count:](self, "initWithValidationFunction:rawValues:forKeys:count:", [dictionary validationFunc], 0, 0, 0);
  if (dictionary && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(dictionary + v5 + 32) == 1)
      {
        result->_values[v5] = *(dictionary + v5 + 6);
        result->_valueSet[v5] = 1;
      }

      v6 = 0;
      v5 = 1;
    }

    while ((v7 & 1) != 0);
  }

  return result;
}

- (void)dealloc
{
  v2 = a2;
  if (self->_autocreator)
  {
    sub_10033C84C();
  }

  v4.receiver = self;
  v4.super_class = GPBBoolEnumDictionary;
  [(GPBBoolEnumDictionary *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBBoolEnumDictionary allocWithZone:zone];

  return [(GPBBoolEnumDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(equal + 32) && self->_valueSet[1] == *(equal + 33) && (!self->_valueSet[0] || self->_values[0] == *(equal + 6)) && (!self->_valueSet[1] || self->_values[1] == *(equal + 7));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %d", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %d", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getEnum:(int *)enum forKey:(BOOL)key
{
  v4 = self->_valueSet[key];
  if (enum && self->_valueSet[key])
  {
    v6 = self->_values[key];
    if ((self->_validationFunc)(v6, a2))
    {
      v7 = v6;
    }

    else
    {
      v7 = -72499473;
    }

    *enum = v7;
  }

  return v4;
}

- (BOOL)getRawValue:(int *)value forKey:(BOOL)key
{
  v5 = self->_valueSet[key];
  if (value && v5)
  {
    *value = self->_values[key];
  }

  return v5;
}

- (void)enumerateKeysAndRawValuesUsingBlock:(id)block
{
  v5 = 0;
  if (!self->_valueSet[0] || ((*(block + 2))(block, 0, self->_values[0], &v5), (v5 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      (*(block + 2))(block, 1, self->_values[1], &v5);
    }
  }
}

- (void)enumerateKeysAndEnumsUsingBlock:(id)block
{
  v10 = 0;
  validationFunc = self->_validationFunc;
  if (!self->_valueSet[0] || ((v6 = self->_values[0], !(validationFunc)(v6, a2)) ? (v7 = 4222467823) : (v7 = v6), (*(block + 2))(block, 0, v7, &v10), (v10 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      v8 = self->_values[1];
      if (validationFunc(v8))
      {
        v9 = v8;
      }

      else
      {
        v9 = 4222467823;
      }

      (*(block + 2))(block, 1, v9, &v10);
    }
  }
}

- (unint64_t)computeSerializedSizeAsField:(id)field
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(*(field + 1) + 30);
  valueSet = self->_valueSet;
  values = self->_values;
  v10 = 1;
  do
  {
    v11 = v10;
    if (valueSet[v4])
    {
      ++v5;
      v12 = GPBComputeBoolSize(1);
      v13 = sub_10031DFD8(values[v4], 2, v7) + v12;
      v6 += v13 + GPBComputeRawVarint32SizeForInteger(v13);
    }

    v10 = 0;
    v4 = 1;
  }

  while ((v11 & 1) != 0);
  return v6 + GPBComputeWireFormatTagSize(*(*(field + 1) + 16), 15) * v5;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v6 = *(field + 1);
  v7 = *(v6 + 30);
  Tag = GPBWireFormatMakeTag(*(v6 + 16), 2);
  v9 = 0;
  v10 = 0;
  valueSet = self->_valueSet;
  values = self->_values;
  v13 = 1;
  do
  {
    v14 = v13;
    if (valueSet[v10])
    {
      [stream writeInt32NoTag:Tag];
      v15 = GPBComputeBoolSize(1);
      [stream writeInt32NoTag:{sub_10031DFD8(values[v10], 2, v7) + v15}];
      [stream writeBool:1 value:v9 & 1];
      sub_10031E218(stream, values[v10], 2, v7);
    }

    v13 = 0;
    v9 = 1;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_valueSet[0])
  {
    (*(format + 2))(format, @"false", [NSNumber numberWithInt:self->_values[0]]);
  }

  if (self->_valueSet[1])
  {
    v5 = [NSNumber numberWithInt:self->_values[1]];
    v6 = *(format + 2);

    v6(format, @"true", v5);
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  var0 = key->var0;
  self->_values[var0] = value->var1;
  self->_valueSet[var0] = 1;
}

- (void)addRawEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(dictionary + v4 + 32) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(dictionary + v4 + 6);
      }

      v5 = 0;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
    autocreator = self->_autocreator;
    if (autocreator)
    {
      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

- (void)setRawValue:(int)value forKey:(BOOL)key
{
  self->_values[key] = value;
  self->_valueSet[key] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end
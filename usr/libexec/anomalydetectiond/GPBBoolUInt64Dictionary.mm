@interface GPBBoolUInt64Dictionary
- (BOOL)getUInt64:(unint64_t *)int64 forKey:(BOOL)key;
- (BOOL)isEqual:(id)equal;
- (GPBBoolUInt64Dictionary)initWithDictionary:(id)dictionary;
- (GPBBoolUInt64Dictionary)initWithUInt64s:(const unint64_t *)int64s forKeys:(const BOOL *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndUInt64sUsingBlock:(id)block;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)setUInt64:(unint64_t)int64 forKey:(BOOL)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBBoolUInt64Dictionary

- (GPBBoolUInt64Dictionary)initWithUInt64s:(const unint64_t *)int64s forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = GPBBoolUInt64Dictionary;
  result = [(GPBBoolUInt64Dictionary *)&v13 init];
  if (result)
  {
    v9 = count == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      v11 = *keys++;
      v10 = v11;
      v12 = *int64s++;
      result->_values[v10] = v12;
      result->_valueSet[v10] = 1;
      --count;
    }

    while (count);
  }

  return result;
}

- (GPBBoolUInt64Dictionary)initWithDictionary:(id)dictionary
{
  result = [(GPBBoolUInt64Dictionary *)self initWithUInt64s:0 forKeys:0 count:0];
  if (dictionary && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(dictionary + v5 + 32) == 1)
      {
        result->_values[v5] = *(dictionary + v5 + 2);
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
    sub_10033C60C();
  }

  v4.receiver = self;
  v4.super_class = GPBBoolUInt64Dictionary;
  [(GPBBoolUInt64Dictionary *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBBoolUInt64Dictionary allocWithZone:zone];

  return [(GPBBoolUInt64Dictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(equal + 32) && self->_valueSet[1] == *(equal + 33) && (!self->_valueSet[0] || self->_values[0] == *(equal + 2)) && (!self->_valueSet[1] || self->_values[1] == *(equal + 3));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %llu", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %llu", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getUInt64:(unint64_t *)int64 forKey:(BOOL)key
{
  v5 = self->_valueSet[key];
  if (int64 && v5)
  {
    *int64 = self->_values[key];
  }

  return v5;
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  var0 = key->var0;
  self->_values[var0] = value->var4;
  self->_valueSet[var0] = 1;
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_valueSet[0])
  {
    (*(format + 2))(format, @"false", [NSString stringWithFormat:@"%llu", self->_values[0]]);
  }

  if (self->_valueSet[1])
  {
    v5 = [NSString stringWithFormat:@"%llu", self->_values[1]];
    v6 = *(format + 2);

    v6(format, @"true", v5);
  }
}

- (void)enumerateKeysAndUInt64sUsingBlock:(id)block
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
      v13 = sub_10031EA6C(values[v4], 2, v7) + v12;
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
      [stream writeInt32NoTag:{sub_10031EA6C(values[v10], 2, v7) + v15}];
      [stream writeBool:1 value:v9 & 1];
      sub_10031EC7C(stream, values[v10], 2, v7);
    }

    v13 = 0;
    v9 = 1;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
}

- (void)addEntriesFromDictionary:(id)dictionary
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
        self->_values[v4] = *(dictionary + v4 + 2);
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

- (void)setUInt64:(unint64_t)int64 forKey:(BOOL)key
{
  self->_values[key] = int64;
  self->_valueSet[key] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end
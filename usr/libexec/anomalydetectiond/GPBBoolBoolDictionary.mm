@interface GPBBoolBoolDictionary
- (BOOL)getBool:(BOOL *)bool forKey:(BOOL)key;
- (BOOL)isEqual:(id)equal;
- (GPBBoolBoolDictionary)initWithBools:(const BOOL *)bools forKeys:(const BOOL *)keys count:(unint64_t)count;
- (GPBBoolBoolDictionary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndBoolsUsingBlock:(id)block;
- (void)setBool:(BOOL)bool forKey:(BOOL)key;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBBoolBoolDictionary

- (GPBBoolBoolDictionary)initWithBools:(const BOOL *)bools forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = GPBBoolBoolDictionary;
  result = [(GPBBoolBoolDictionary *)&v12 init];
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
      LOBYTE(v11) = *bools++;
      result->_values[v10] = v11;
      result->_valueSet[v10] = 1;
      --count;
    }

    while (count);
  }

  return result;
}

- (GPBBoolBoolDictionary)initWithDictionary:(id)dictionary
{
  result = [(GPBBoolBoolDictionary *)self initWithBools:0 forKeys:0 count:0];
  if (dictionary && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(dictionary + v5 + 18) == 1)
      {
        result->_values[v5] = *(dictionary + v5 + 16);
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
    sub_10033C6CC();
  }

  v4.receiver = self;
  v4.super_class = GPBBoolBoolDictionary;
  [(GPBBoolBoolDictionary *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBBoolBoolDictionary allocWithZone:zone];

  return [(GPBBoolBoolDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(equal + 18) && self->_valueSet[1] == *(equal + 19) && (!self->_valueSet[0] || self->_values[0] == *(equal + 16)) && (!self->_valueSet[1] || self->_values[1] == *(equal + 17));
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

- (BOOL)getBool:(BOOL *)bool forKey:(BOOL)key
{
  v5 = self->_valueSet[key];
  if (bool && v5)
  {
    *bool = self->_values[key];
  }

  return v5;
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  v4 = self + key->var0;
  v4[16] = value->var0;
  v4[18] = 1;
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_valueSet[0])
  {
    if (self->_values[0])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    (*(format + 2))(format, @"false", v5);
  }

  if (self->_valueSet[1])
  {
    if (self->_values[1])
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    v7 = *(format + 2);

    v7(format, @"true", v6);
  }
}

- (void)enumerateKeysAndBoolsUsingBlock:(id)block
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
      v13 = sub_10031FF38(values[v4], 2, v7) + v12;
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
      [stream writeInt32NoTag:{sub_10031FF38(values[v10], 2, v7) + v15}];
      [stream writeBool:1 value:v9 & 1];
      sub_1003200BC(stream, values[v10], 2, v7);
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
      if (*(dictionary + v4 + 18) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(dictionary + v4 + 16);
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

- (void)setBool:(BOOL)bool forKey:(BOOL)key
{
  v5 = self + key;
  v5[16] = bool;
  v5[18] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end
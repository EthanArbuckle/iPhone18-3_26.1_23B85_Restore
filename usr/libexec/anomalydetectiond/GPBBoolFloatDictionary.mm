@interface GPBBoolFloatDictionary
- (BOOL)getFloat:(float *)float forKey:(BOOL)key;
- (BOOL)isEqual:(id)equal;
- (GPBBoolFloatDictionary)initWithDictionary:(id)dictionary;
- (GPBBoolFloatDictionary)initWithFloats:(const float *)floats forKeys:(const BOOL *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndFloatsUsingBlock:(id)block;
- (void)setFloat:(float)float forKey:(BOOL)key;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBBoolFloatDictionary

- (GPBBoolFloatDictionary)initWithFloats:(const float *)floats forKeys:(const BOOL *)keys count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = GPBBoolFloatDictionary;
  result = [(GPBBoolFloatDictionary *)&v13 init];
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
      v12 = *floats++;
      result->_values[v10] = v12;
      result->_valueSet[v10] = 1;
      --count;
    }

    while (count);
  }

  return result;
}

- (GPBBoolFloatDictionary)initWithDictionary:(id)dictionary
{
  result = [(GPBBoolFloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
  if (dictionary && result)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(dictionary + v5 + 24) == 1)
      {
        result->_values[v5] = *(dictionary + v5 + 4);
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
    sub_10033C72C();
  }

  v4.receiver = self;
  v4.super_class = GPBBoolFloatDictionary;
  [(GPBBoolFloatDictionary *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBBoolFloatDictionary allocWithZone:zone];

  return [(GPBBoolFloatDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_valueSet[0] == *(equal + 24) && self->_valueSet[1] == *(equal + 25) && (!self->_valueSet[0] || self->_values[0] == *(equal + 4)) && (!self->_valueSet[1] || self->_values[1] == *(equal + 5));
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> {", objc_opt_class(), self];
  v4 = v3;
  if (self->_valueSet[0])
  {
    [(NSMutableString *)v3 appendFormat:@"NO: %f", self->_values[0]];
  }

  if (self->_valueSet[1])
  {
    [(NSMutableString *)v4 appendFormat:@"YES: %f", self->_values[1]];
  }

  [(NSMutableString *)v4 appendString:@" }"];
  return v4;
}

- (BOOL)getFloat:(float *)float forKey:(BOOL)key
{
  v5 = self->_valueSet[key];
  if (float && v5)
  {
    *float = self->_values[key];
  }

  return v5;
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  var0 = key->var0;
  LODWORD(self->_values[var0]) = value->var1;
  self->_valueSet[var0] = 1;
}

- (void)enumerateForTextFormat:(id)format
{
  if (self->_valueSet[0])
  {
    (*(format + 2))(format, @"false", [NSString stringWithFormat:@"%.*g", 6, self->_values[0]]);
  }

  if (self->_valueSet[1])
  {
    v5 = [NSString stringWithFormat:@"%.*g", 6, self->_values[1]];
    v6 = *(format + 2);

    v6(format, @"true", v5);
  }
}

- (void)enumerateKeysAndFloatsUsingBlock:(id)block
{
  v5 = 0;
  if (!self->_valueSet[0] || ((*(block + 2))(block, 0, &v5, self->_values[0]), (v5 & 1) == 0))
  {
    if (self->_valueSet[1])
    {
      (*(block + 2))(block, 1, &v5, self->_values[1]);
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
      v13 = values[v4];
      v14 = sub_100320864(v7) + v12;
      v6 += v14 + GPBComputeRawVarint32SizeForInteger(v14);
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
      v16 = values[v10];
      [stream writeInt32NoTag:sub_100320864(v7) + v15];
      [stream writeBool:1 value:v9 & 1];
      *&v17 = values[v10];
      sub_1003209DC(stream, v7, v17);
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
      if (*(dictionary + v4 + 24) == 1)
      {
        self->_valueSet[v4] = 1;
        self->_values[v4] = *(dictionary + v4 + 4);
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

- (void)setFloat:(float)float forKey:(BOOL)key
{
  self->_values[key] = float;
  self->_valueSet[key] = 1;
  autocreator = self->_autocreator;
  if (autocreator)
  {
    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

@end
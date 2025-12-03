@interface GPBStringFloatDictionary
- (BOOL)getFloat:(float *)float forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (GPBStringFloatDictionary)initWithDictionary:(id)dictionary;
- (GPBStringFloatDictionary)initWithFloats:(const float *)floats forKeys:(id *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndFloatsUsingBlock:(id)block;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBStringFloatDictionary

- (GPBStringFloatDictionary)initWithFloats:(const float *)floats forKeys:(id *)keys count:(unint64_t)count
{
  v15.receiver = self;
  v15.super_class = GPBStringFloatDictionary;
  v8 = [(GPBStringFloatDictionary *)&v15 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (floats && count)
      {
        do
        {
          if (!*keys)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v8->_dictionary;
          v11 = *floats++;
          LODWORD(v9) = v11;
          v12 = [NSNumber numberWithFloat:v9];
          v13 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v12 forKey:v13];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (GPBStringFloatDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBStringFloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
  v5 = v4;
  if (dictionary && v4)
  {
    [(NSMutableDictionary *)v4->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_autocreator)
  {
    sub_10033C42C();
  }

  v3.receiver = self;
  v3.super_class = GPBStringFloatDictionary;
  [(GPBStringFloatDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBStringFloatDictionary allocWithZone:zone];

  return [(GPBStringFloatDictionary *)v4 initWithDictionary:self];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  dictionary = self->_dictionary;
  v6 = *(equal + 2);

  return [(NSMutableDictionary *)dictionary isEqual:v6];
}

- (void)enumerateKeysAndFloatsUsingBlock:(id)block
{
  v8 = 0;
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v7 = nextObject;
    [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{nextObject), "floatValue"}];
    (*(block + 2))(block, v7, &v8);
  }

  while (v8 != 1);
}

- (unint64_t)computeSerializedSizeAsField:(id)field
{
  dictionary = self->_dictionary;
  result = [(NSMutableDictionary *)dictionary count];
  if (result)
  {
    v6 = result;
    v7 = *(*(field + 1) + 30);
    mapKeyDataType = [field mapKeyDataType];
    keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v12 = 0;
      do
      {
        v13 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
        v14 = sub_100332660(nextObject2, mapKeyDataType);
        [v13 floatValue];
        v15 = &v14[sub_100320864(v7)];
        v12 += &v15[GPBComputeRawVarint32SizeForInteger(v15)];
        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    else
    {
      v12 = 0;
    }

    return v12 + GPBComputeWireFormatTagSize(*(*(field + 1) + 16), 15) * v6;
  }

  return result;
}

- (void)writeToCodedOutputStream:(id)stream asField:(id)field
{
  v7 = *(*(field + 1) + 30);
  mapKeyDataType = [field mapKeyDataType];
  Tag = GPBWireFormatMakeTag(*(*(field + 1) + 16), 2);
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v14 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject2];
      [stream writeInt32NoTag:Tag];
      [v14 floatValue];
      v16 = v15;
      LODWORD(v14) = sub_100332660(nextObject2, mapKeyDataType);
      [stream writeInt32NoTag:sub_100320864(v7) + v14];
      sub_1003327D0(stream, nextObject2, mapKeyDataType);
      LODWORD(v17) = v16;
      sub_1003209DC(stream, v7, v17);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  LODWORD(v4) = value->var1;
  v7 = [NSNumber numberWithFloat:v4];
  var2 = key->var2;

  [(NSMutableDictionary *)dictionary setObject:v7 forKey:var2];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100335108;
  v3[3] = &unk_100435C88;
  v3[4] = format;
  [(GPBStringFloatDictionary *)self enumerateKeysAndFloatsUsingBlock:v3];
}

- (BOOL)getFloat:(float *)float forKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  v6 = v5;
  if (float && v5)
  {
    [v5 floatValue];
    *float = v7;
  }

  return v6 != 0;
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  if (dictionary)
  {
    [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:*(dictionary + 2)];
    autocreator = self->_autocreator;
    if (autocreator)
    {

      GPBAutocreatedDictionaryModified(autocreator, self);
    }
  }
}

@end
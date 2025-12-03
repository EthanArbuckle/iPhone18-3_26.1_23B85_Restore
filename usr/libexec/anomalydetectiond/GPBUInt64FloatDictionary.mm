@interface GPBUInt64FloatDictionary
- (BOOL)getFloat:(float *)float forKey:(unint64_t)key;
- (BOOL)isEqual:(id)equal;
- (GPBUInt64FloatDictionary)initWithDictionary:(id)dictionary;
- (GPBUInt64FloatDictionary)initWithFloats:(const float *)floats forKeys:(const unint64_t *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndFloatsUsingBlock:(id)block;
- (void)removeFloatForKey:(unint64_t)key;
- (void)setFloat:(float)float forKey:(unint64_t)key;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBUInt64FloatDictionary

- (GPBUInt64FloatDictionary)initWithFloats:(const float *)floats forKeys:(const unint64_t *)keys count:(unint64_t)count
{
  v15.receiver = self;
  v15.super_class = GPBUInt64FloatDictionary;
  v8 = [(GPBUInt64FloatDictionary *)&v15 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (floats && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v11 = *floats++;
          LODWORD(v9) = v11;
          v12 = [NSNumber numberWithFloat:v9];
          v13 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v12 forKey:[NSNumber numberWithUnsignedLongLong:v13]];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (GPBUInt64FloatDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBUInt64FloatDictionary *)self initWithFloats:0 forKeys:0 count:0];
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
    sub_10033BC94();
  }

  v3.receiver = self;
  v3.super_class = GPBUInt64FloatDictionary;
  [(GPBUInt64FloatDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBUInt64FloatDictionary allocWithZone:zone];

  return [(GPBUInt64FloatDictionary *)v4 initWithDictionary:self];
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
  v10 = 0;
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
    v8 = [(NSMutableDictionary *)dictionary objectForKeyedSubscript:nextObject];
    unsignedLongLongValue = [v7 unsignedLongLongValue];
    [v8 floatValue];
    (*(block + 2))(block, unsignedLongLongValue, &v10);
  }

  while (v10 != 1);
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
        v14 = sub_10031EA6C([nextObject2 unsignedLongLongValue], 1, mapKeyDataType);
        [v13 floatValue];
        v15 = sub_100320864(v7) + v14;
        v12 += v15 + GPBComputeRawVarint32SizeForInteger(v15);
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
      unsignedLongLongValue = [nextObject2 unsignedLongLongValue];
      [v14 floatValue];
      v17 = v16;
      LODWORD(v14) = sub_10031EA6C(unsignedLongLongValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:sub_100320864(v7) + v14];
      sub_10031EC7C(stream, unsignedLongLongValue, 1, mapKeyDataType);
      LODWORD(v18) = v17;
      sub_1003209DC(stream, v7, v18);
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
  v8 = [NSNumber numberWithUnsignedLongLong:key->var2];

  [(NSMutableDictionary *)dictionary setObject:v7 forKey:v8];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10032AFD4;
  v3[3] = &unk_100435A08;
  v3[4] = format;
  [(GPBUInt64FloatDictionary *)self enumerateKeysAndFloatsUsingBlock:v3];
}

- (BOOL)getFloat:(float *)float forKey:(unint64_t)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:[NSNumber numberWithUnsignedLongLong:key]];
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

- (void)setFloat:(float)float forKey:(unint64_t)key
{
  [(NSMutableDictionary *)self->_dictionary setObject:[NSNumber numberWithFloat:?], [NSNumber numberWithUnsignedLongLong:key]];
  autocreator = self->_autocreator;
  if (autocreator)
  {

    GPBAutocreatedDictionaryModified(autocreator, self);
  }
}

- (void)removeFloatForKey:(unint64_t)key
{
  dictionary = self->_dictionary;
  v4 = [NSNumber numberWithUnsignedLongLong:key];

  [(NSMutableDictionary *)dictionary removeObjectForKey:v4];
}

@end
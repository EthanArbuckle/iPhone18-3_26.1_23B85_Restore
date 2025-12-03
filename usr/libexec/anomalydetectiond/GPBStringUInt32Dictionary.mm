@interface GPBStringUInt32Dictionary
- (BOOL)getUInt32:(unsigned int *)int32 forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (GPBStringUInt32Dictionary)initWithDictionary:(id)dictionary;
- (GPBStringUInt32Dictionary)initWithUInt32s:(const unsigned int *)int32s forKeys:(id *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndUInt32sUsingBlock:(id)block;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBStringUInt32Dictionary

- (GPBStringUInt32Dictionary)initWithUInt32s:(const unsigned int *)int32s forKeys:(id *)keys count:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = GPBStringUInt32Dictionary;
  v8 = [(GPBStringUInt32Dictionary *)&v14 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (int32s && count)
      {
        do
        {
          if (!*keys)
          {
            [NSException raise:NSInvalidArgumentException format:@"Attempting to add nil key to a Dictionary"];
          }

          dictionary = v8->_dictionary;
          v10 = *int32s++;
          v11 = [NSNumber numberWithUnsignedInt:v10];
          v12 = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:v12];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (GPBStringUInt32Dictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBStringUInt32Dictionary *)self initWithUInt32s:0 forKeys:0 count:0];
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
    sub_10033C174();
  }

  v3.receiver = self;
  v3.super_class = GPBStringUInt32Dictionary;
  [(GPBStringUInt32Dictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBStringUInt32Dictionary allocWithZone:zone];

  return [(GPBStringUInt32Dictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndUInt32sUsingBlock:(id)block
{
  v7 = 0;
  dictionary = self->_dictionary;
  keyEnumerator = [(NSMutableDictionary *)dictionary keyEnumerator];
  do
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    (*(block + 2))(block, nextObject, [-[NSMutableDictionary objectForKeyedSubscript:](dictionary objectForKeyedSubscript:{nextObject), "unsignedIntValue"}], &v7);
  }

  while (v7 != 1);
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
        v15 = &v14[sub_10031D598([v13 unsignedIntValue], 2, v7)];
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
      unsignedIntValue = [v14 unsignedIntValue];
      v16 = sub_100332660(nextObject2, mapKeyDataType);
      [stream writeInt32NoTag:{sub_10031D598(unsignedIntValue, 2, v7) + v16}];
      sub_1003327D0(stream, nextObject2, mapKeyDataType);
      sub_10031D7A8(stream, unsignedIntValue, 2, v7);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithUnsignedInt:value->var3];
  var2 = key->var2;

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:var2];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003328E0;
  v3[3] = &unk_100435BC0;
  v3[4] = format;
  [(GPBStringUInt32Dictionary *)self enumerateKeysAndUInt32sUsingBlock:v3];
}

- (BOOL)getUInt32:(unsigned int *)int32 forKey:(id)key
{
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
  v6 = v5;
  if (int32 && v5)
  {
    *int32 = [v5 unsignedIntValue];
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
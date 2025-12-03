@interface GPBUInt32DoubleDictionary
- (BOOL)isEqual:(id)equal;
- (GPBUInt32DoubleDictionary)initWithDictionary:(id)dictionary;
- (GPBUInt32DoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(const unsigned int *)keys count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)computeSerializedSizeAsField:(id)field;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateForTextFormat:(id)format;
- (void)enumerateKeysAndDoublesUsingBlock:(id)block;
- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key;
- (void)writeToCodedOutputStream:(id)stream asField:(id)field;
@end

@implementation GPBUInt32DoubleDictionary

- (GPBUInt32DoubleDictionary)initWithDoubles:(const double *)doubles forKeys:(const unsigned int *)keys count:(unint64_t)count
{
  v13.receiver = self;
  v13.super_class = GPBUInt32DoubleDictionary;
  v8 = [(GPBUInt32DoubleDictionary *)&v13 init];
  if (v8)
  {
    v8->_dictionary = objc_alloc_init(NSMutableDictionary);
    if (keys)
    {
      if (doubles && count)
      {
        do
        {
          dictionary = v8->_dictionary;
          v10 = *doubles++;
          v11 = [NSNumber numberWithDouble:v10];
          LODWORD(v10) = *keys++;
          [(NSMutableDictionary *)dictionary setObject:v11 forKey:[NSNumber numberWithUnsignedInt:LODWORD(v10)]];
          --count;
        }

        while (count);
      }
    }
  }

  return v8;
}

- (GPBUInt32DoubleDictionary)initWithDictionary:(id)dictionary
{
  v4 = [(GPBUInt32DoubleDictionary *)self initWithDoubles:0 forKeys:0 count:0];
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
    sub_10033B484();
  }

  v3.receiver = self;
  v3.super_class = GPBUInt32DoubleDictionary;
  [(GPBUInt32DoubleDictionary *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GPBUInt32DoubleDictionary allocWithZone:zone];

  return [(GPBUInt32DoubleDictionary *)v4 initWithDictionary:self];
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

- (void)enumerateKeysAndDoublesUsingBlock:(id)block
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
    unsignedIntValue = [v7 unsignedIntValue];
    [v8 doubleValue];
    (*(block + 2))(block, unsignedIntValue, &v10);
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
        v14 = sub_10031D598([nextObject2 unsignedIntValue], 1, mapKeyDataType);
        [v13 doubleValue];
        v15 = sub_1003211A4(v7) + v14;
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
      unsignedIntValue = [nextObject2 unsignedIntValue];
      [v14 doubleValue];
      v17 = v16;
      LODWORD(v14) = sub_10031D598(unsignedIntValue, 1, mapKeyDataType);
      [stream writeInt32NoTag:sub_1003211A4(v7) + v14];
      sub_10031D7A8(stream, unsignedIntValue, 1, mapKeyDataType);
      sub_10032131C(stream, v7, v17);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)setGPBGenericValue:(id *)value forGPBGenericValueKey:(id *)key
{
  dictionary = self->_dictionary;
  v6 = [NSNumber numberWithDouble:value->var6];
  v7 = [NSNumber numberWithUnsignedInt:key->var3];

  [(NSMutableDictionary *)dictionary setObject:v6 forKey:v7];
}

- (void)enumerateForTextFormat:(id)format
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10032144C;
  v3[3] = &unk_1004357B0;
  v3[4] = format;
  [(GPBUInt32DoubleDictionary *)self enumerateKeysAndDoublesUsingBlock:v3];
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